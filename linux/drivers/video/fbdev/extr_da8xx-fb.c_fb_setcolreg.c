
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u_short ;
typedef unsigned int u32 ;
struct TYPE_9__ {unsigned int offset; int length; } ;
struct TYPE_8__ {unsigned int offset; int length; } ;
struct TYPE_7__ {unsigned int offset; int length; } ;
struct TYPE_10__ {int bits_per_pixel; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; int grayscale; } ;
struct TYPE_6__ {int visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_5__ var; TYPE_1__ fix; struct da8xx_fb_par* par; } ;
struct da8xx_fb_par {scalar_t__ v_palette_base; } ;


 unsigned int CNVT_TOHW (unsigned int,int ) ;
 int EINVAL ;
 int FB_VISUAL_DIRECTCOLOR ;


 scalar_t__ LCD_VERSION_1 ;
 int LOAD_PALETTE ;
 int lcd_blit (int ,struct da8xx_fb_par*) ;
 scalar_t__ lcd_revision ;

__attribute__((used)) static int fb_setcolreg(unsigned regno, unsigned red, unsigned green,
         unsigned blue, unsigned transp,
         struct fb_info *info)
{
 struct da8xx_fb_par *par = info->par;
 unsigned short *palette = (unsigned short *) par->v_palette_base;
 u_short pal;
 int update_hw = 0;

 if (regno > 255)
  return 1;

 if (info->fix.visual == FB_VISUAL_DIRECTCOLOR)
  return 1;

 if (info->var.bits_per_pixel > 16 && lcd_revision == LCD_VERSION_1)
  return -EINVAL;

 switch (info->fix.visual) {
 case 128:
  red = CNVT_TOHW(red, info->var.red.length);
  green = CNVT_TOHW(green, info->var.green.length);
  blue = CNVT_TOHW(blue, info->var.blue.length);
  break;
 case 129:
  switch (info->var.bits_per_pixel) {
  case 4:
   if (regno > 15)
    return -EINVAL;

   if (info->var.grayscale) {
    pal = regno;
   } else {
    red >>= 4;
    green >>= 8;
    blue >>= 12;

    pal = red & 0x0f00;
    pal |= green & 0x00f0;
    pal |= blue & 0x000f;
   }
   if (regno == 0)
    pal |= 0x2000;
   palette[regno] = pal;
   break;

  case 8:
   red >>= 4;
   green >>= 8;
   blue >>= 12;

   pal = (red & 0x0f00);
   pal |= (green & 0x00f0);
   pal |= (blue & 0x000f);

   if (palette[regno] != pal) {
    update_hw = 1;
    palette[regno] = pal;
   }
   break;
  }
  break;
 }


 if (info->fix.visual == 128) {
  u32 v;

  if (regno > 15)
   return -EINVAL;

  v = (red << info->var.red.offset) |
   (green << info->var.green.offset) |
   (blue << info->var.blue.offset);

  ((u32 *) (info->pseudo_palette))[regno] = v;
  if (palette[0] != 0x4000) {
   update_hw = 1;
   palette[0] = 0x4000;
  }
 }


 if (update_hw)
  lcd_blit(LOAD_PALETTE, par);

 return 0;
}
