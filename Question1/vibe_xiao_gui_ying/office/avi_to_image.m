%将视频转换为单张图片
clear
clc

file_name = 'mask.avi';        %视频所在文件夹
obj = VideoReader(file_name);     %读取视频文件

numFrames = obj.NumberOfFrames;   %视频总的帧数 
for k = 1: numFrames
    frame = read(obj,k);
    %imshow(frame);                
    gray_frame = rgb2gray(frame); %若每一帧为彩色图片，转换为灰度图
    imshow(frame);                %显示每一帧图片
    %保存每一帧图片
    imwrite(gray_frame,strcat('D:\数学建模代码\2017\D\附件2-典型视频\不带晃动-静态背景\office\',num2str(k),'.jpg'),'jpg');
end
