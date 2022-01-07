
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fb_info {int dummy; } ;
struct fb_image {unsigned char* data; int width; } ;


 int GDC_CMD_BLT_DRAW ;
 int GDC_TYPE_DRAWBITMAPP ;
 int memcpy (int*,unsigned char const*,int) ;

__attribute__((used)) static void mb86290fb_imageblit16(u32 *cmd, u16 step, u16 dx, u16 dy,
      u16 width, u16 height, u32 fgcolor,
      u32 bgcolor, const struct fb_image *image,
      struct fb_info *info)
{
 int i;
 unsigned const char *line;
 u16 bytes;

 i = 0;
 line = image->data;
 bytes = image->width << 1;

 cmd[0] = (GDC_TYPE_DRAWBITMAPP << 24) |
     (GDC_CMD_BLT_DRAW << 16) | (2 + step * height);
 cmd[1] = (dy << 16) | dx;
 cmd[2] = (height << 16) | width;

 while (i < height) {
  memcpy(&cmd[3 + i * step], line, step);
  line += bytes;
  i++;
 }
}
