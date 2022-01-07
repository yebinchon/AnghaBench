
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int yoffset; int xoffset; int bits_per_pixel; } ;
struct fb_fix_screeninfo {int line_length; } ;



__attribute__((used)) static unsigned calc_rotation_offset_dma(const struct fb_var_screeninfo *var,
  const struct fb_fix_screeninfo *fix, int rotation)
{
 unsigned offset;

 offset = var->yoffset * fix->line_length +
  var->xoffset * (var->bits_per_pixel >> 3);

 return offset;
}
