
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u32 ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; struct clps711x_fb_info* par; } ;
struct clps711x_fb_info {scalar_t__ base; scalar_t__ cmap_invert; } ;


 scalar_t__ BIT (int ) ;
 scalar_t__ CLPS711X_PALLSW ;
 scalar_t__ CLPS711X_PALMSW ;
 int EINVAL ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clps711x_fb_setcolreg(u_int regno, u_int red, u_int green,
     u_int blue, u_int transp, struct fb_info *info)
{
 struct clps711x_fb_info *cfb = info->par;
 u32 level, mask, shift;

 if (regno >= BIT(info->var.bits_per_pixel))
  return -EINVAL;

 shift = 4 * (regno & 7);
 mask = 0xf << shift;

 level = (((red * 77 + green * 151 + blue * 28) >> 20) << shift) & mask;
 if (cfb->cmap_invert)
  level = 0xf - level;

 regno = (regno < 8) ? CLPS711X_PALLSW : CLPS711X_PALMSW;

 writel((readl(cfb->base + regno) & ~mask) | level, cfb->base + regno);

 return 0;
}
