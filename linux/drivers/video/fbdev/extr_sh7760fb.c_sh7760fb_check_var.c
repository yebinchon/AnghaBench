
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh7760fb_par {TYPE_1__* pd; } ;
struct fb_var_screeninfo {int bits_per_pixel; scalar_t__ grayscale; } ;
struct fb_fix_screeninfo {int visual; } ;
struct fb_info {int dev; struct sh7760fb_par* par; struct fb_fix_screeninfo fix; } ;
struct TYPE_2__ {int lddfr; } ;


 int FB_VISUAL_MONO10 ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int sh7760fb_get_color_info (int ,int ,int*,int *) ;

__attribute__((used)) static int sh7760fb_check_var(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct fb_fix_screeninfo *fix = &info->fix;
 struct sh7760fb_par *par = info->par;
 int ret, bpp;


 ret = sh7760fb_get_color_info(info->dev, par->pd->lddfr, &bpp, ((void*)0));
 if (ret)
  return ret;

 var->bits_per_pixel = bpp;

 if ((var->grayscale) && (var->bits_per_pixel == 1))
  fix->visual = FB_VISUAL_MONO10;
 else if (var->bits_per_pixel >= 15)
  fix->visual = FB_VISUAL_TRUECOLOR;
 else
  fix->visual = FB_VISUAL_PSEUDOCOLOR;


 return 0;
}
