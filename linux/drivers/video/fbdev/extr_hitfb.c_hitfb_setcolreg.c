
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ var; } ;


 int HD64461_CPTWAR ;
 int HD64461_CPTWDR ;
 int fb_writew (unsigned int,int ) ;

__attribute__((used)) static int hitfb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp, struct fb_info *info)
{
 if (regno >= 256)
  return 1;

 switch (info->var.bits_per_pixel) {
 case 8:
  fb_writew(regno << 8, HD64461_CPTWAR);
  fb_writew(red >> 10, HD64461_CPTWDR);
  fb_writew(green >> 10, HD64461_CPTWDR);
  fb_writew(blue >> 10, HD64461_CPTWDR);
  break;
 case 16:
  if (regno >= 16)
   return 1;
  ((u32 *) (info->pseudo_palette))[regno] =
      ((red & 0xf800)) |
      ((green & 0xfc00) >> 5) | ((blue & 0xf800) >> 11);
  break;
 }
 return 0;
}
