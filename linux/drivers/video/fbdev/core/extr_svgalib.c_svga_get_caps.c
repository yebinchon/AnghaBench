
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct fb_info {int dummy; } ;
struct fb_blit_caps {int x; int y; int len; } ;



void svga_get_caps(struct fb_info *info, struct fb_blit_caps *caps,
     struct fb_var_screeninfo *var)
{
 if (var->bits_per_pixel == 0) {

  caps->x = 1 << (8 - 1);
  caps->y = 1 << (16 - 1);
  caps->len = 256;
 } else {
  caps->x = (var->bits_per_pixel == 4) ? 1 << (8 - 1) : ~(u32)0;
  caps->y = ~(u32)0;
  caps->len = ~(u32)0;
 }
}
