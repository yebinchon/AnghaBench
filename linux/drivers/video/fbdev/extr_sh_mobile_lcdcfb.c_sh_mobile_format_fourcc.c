
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int grayscale; int bits_per_pixel; } ;


 int V4L2_PIX_FMT_BGR24 ;
 int V4L2_PIX_FMT_BGR32 ;
 int V4L2_PIX_FMT_RGB565 ;

__attribute__((used)) static int sh_mobile_format_fourcc(const struct fb_var_screeninfo *var)
{
 if (var->grayscale > 1)
  return var->grayscale;

 switch (var->bits_per_pixel) {
 case 16:
  return V4L2_PIX_FMT_RGB565;
 case 24:
  return V4L2_PIX_FMT_BGR24;
 case 32:
  return V4L2_PIX_FMT_BGR32;
 default:
  return 0;
 }
}
