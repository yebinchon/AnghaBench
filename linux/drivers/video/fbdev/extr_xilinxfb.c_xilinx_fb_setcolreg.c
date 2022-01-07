
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {scalar_t__ grayscale; } ;
struct fb_info {unsigned int* pseudo_palette; TYPE_1__ var; } ;


 unsigned int BLUE_SHIFT ;
 int EINVAL ;
 unsigned int GREEN_SHIFT ;
 unsigned int PALETTE_ENTRIES_NO ;
 unsigned int RED_SHIFT ;

__attribute__((used)) static int
xilinx_fb_setcolreg(unsigned int regno, unsigned int red, unsigned int green,
      unsigned int blue, unsigned int transp, struct fb_info *fbi)
{
 u32 *palette = fbi->pseudo_palette;

 if (regno >= PALETTE_ENTRIES_NO)
  return -EINVAL;

 if (fbi->var.grayscale) {



  blue = (red * 77 + green * 151 + blue * 28 + 127) >> 8;
  green = blue;
  red = green;
 }




 red >>= 8;
 green >>= 8;
 blue >>= 8;
 palette[regno] = (red << RED_SHIFT) | (green << GREEN_SHIFT) |
    (blue << BLUE_SHIFT);

 return 0;
}
