
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef unsigned int u32 ;
struct TYPE_2__ {scalar_t__ grayscale; } ;
struct fb_info {unsigned int* pseudo_palette; TYPE_1__ var; } ;


 int MAX_PALETTES ;

__attribute__((used)) static int w100fb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
        u_int trans, struct fb_info *info)
{
 unsigned int val;
 int ret = 1;





 if (info->var.grayscale)
  red = green = blue = (19595 * red + 38470 * green + 7471 * blue) >> 16;





 if (regno < MAX_PALETTES) {
  u32 *pal = info->pseudo_palette;

  val = (red & 0xf800) | ((green & 0xfc00) >> 5) | ((blue & 0xf800) >> 11);
  pal[regno] = val;
  ret = 0;
 }
 return ret;
}
