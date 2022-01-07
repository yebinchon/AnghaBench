
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {unsigned int width; unsigned int height; unsigned int sizeimage; unsigned int bytesperline; int pixelformat; int field; } ;


 unsigned int ALIGN (unsigned int,int) ;
 int CEDRUS_MAX_HEIGHT ;
 int CEDRUS_MAX_WIDTH ;
 int CEDRUS_MIN_HEIGHT ;
 int CEDRUS_MIN_WIDTH ;
 int V4L2_FIELD_NONE ;




 unsigned int clamp (unsigned int,int ,int ) ;

__attribute__((used)) static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
{
 unsigned int width = pix_fmt->width;
 unsigned int height = pix_fmt->height;
 unsigned int sizeimage = pix_fmt->sizeimage;
 unsigned int bytesperline = pix_fmt->bytesperline;

 pix_fmt->field = V4L2_FIELD_NONE;


 width = clamp(width, CEDRUS_MIN_WIDTH, CEDRUS_MAX_WIDTH);
 height = clamp(height, CEDRUS_MIN_HEIGHT, CEDRUS_MAX_HEIGHT);

 switch (pix_fmt->pixelformat) {
 case 130:
 case 131:

  bytesperline = 0;

  break;

 case 128:

  bytesperline = ALIGN(width, 32);


  height = ALIGN(height, 32);


  sizeimage = bytesperline * height;


  sizeimage += bytesperline * height / 2;

  break;

 case 129:

  bytesperline = ALIGN(width, 16);


  height = ALIGN(height, 16);


  sizeimage = bytesperline * height;


  sizeimage += bytesperline * height / 2;

  break;
 }

 pix_fmt->width = width;
 pix_fmt->height = height;

 pix_fmt->bytesperline = bytesperline;
 pix_fmt->sizeimage = sizeimage;
}
