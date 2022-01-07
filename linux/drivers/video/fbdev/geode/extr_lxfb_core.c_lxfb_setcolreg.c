
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int blue; int green; int red; scalar_t__ grayscale; } ;
struct TYPE_3__ {scalar_t__ visual; } ;
struct fb_info {TYPE_2__ var; int * pseudo_palette; TYPE_1__ fix; } ;


 int EINVAL ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int chan_to_field (unsigned int,int *) ;
 int lx_set_palette_reg (struct fb_info*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int lxfb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{
 if (info->var.grayscale) {

  red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 }


 if (info->fix.visual == FB_VISUAL_TRUECOLOR) {
  u32 *pal = info->pseudo_palette;
  u32 v;

  if (regno >= 16)
   return -EINVAL;

  v = chan_to_field(red, &info->var.red);
  v |= chan_to_field(green, &info->var.green);
  v |= chan_to_field(blue, &info->var.blue);

  pal[regno] = v;
 } else {
  if (regno >= 256)
   return -EINVAL;

  lx_set_palette_reg(info, regno, red, green, blue);
 }

 return 0;
}
