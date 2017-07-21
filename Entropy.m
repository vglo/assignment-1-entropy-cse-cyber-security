fileName=input('Enter name of file:','s');
file=fopen(fileName,'rb');
fileData=fread(file);
fileLength=length(fileData);
%frequency=hist(fileData,256);
h=histogram(fileData,256);
frequency=h.Values;
%plot(frequency)
fclose(file);
probability=frequency./fileLength;
i=probability>0;
entropy=-sum(probability(i).*log2(probability(i)))