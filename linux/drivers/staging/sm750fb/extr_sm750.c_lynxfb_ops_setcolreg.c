
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lynxfb_crtc {int dummy; } ;
struct lynxfb_par {int * pseudo_palette; struct lynxfb_crtc crtc; } ;
struct fb_var_screeninfo {int bits_per_pixel; int blue; int green; int red; scalar_t__ grayscale; } ;
struct TYPE_2__ {scalar_t__ visual; } ;
struct fb_info {TYPE_1__ fix; struct fb_var_screeninfo var; struct lynxfb_par* par; } ;


 int EINVAL ;
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int chan_to_field (unsigned int,int *) ;
 int hw_sm750_setColReg (struct lynxfb_crtc*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int lynxfb_ops_setcolreg(unsigned int regno,
    unsigned int red,
    unsigned int green,
    unsigned int blue,
    unsigned int transp,
    struct fb_info *info)
{
 struct lynxfb_par *par;
 struct lynxfb_crtc *crtc;
 struct fb_var_screeninfo *var;
 int ret;

 par = info->par;
 crtc = &par->crtc;
 var = &info->var;
 ret = 0;

 if (regno > 256) {
  pr_err("regno = %d\n", regno);
  return -EINVAL;
 }

 if (info->var.grayscale)
  red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;

 if (var->bits_per_pixel == 8 &&
     info->fix.visual == FB_VISUAL_PSEUDOCOLOR) {
  red >>= 8;
  green >>= 8;
  blue >>= 8;
  ret = hw_sm750_setColReg(crtc, regno, red, green, blue);
  goto exit;
 }

 if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256) {
  u32 val;

  if (var->bits_per_pixel == 16 ||
      var->bits_per_pixel == 32 ||
      var->bits_per_pixel == 24) {
   val = chan_to_field(red, &var->red);
   val |= chan_to_field(green, &var->green);
   val |= chan_to_field(blue, &var->blue);
   par->pseudo_palette[regno] = val;
   goto exit;
  }
 }

 ret = -EINVAL;

exit:
 return ret;
}
