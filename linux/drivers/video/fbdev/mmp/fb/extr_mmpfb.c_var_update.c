
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmpfb_info {int pix_fmt; int mode; int dev; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int yres_virtual; int yres; int xres_virtual; int bits_per_pixel; } ;
struct TYPE_2__ {int line_length; int ypanstep; int visual; } ;
struct fb_info {TYPE_1__ fix; int modelist; struct fb_var_screeninfo var; struct mmpfb_info* par; } ;


 int EINVAL ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int PIXFMT_PSEUDOCOLOR ;
 int dev_err (int ,char*) ;
 scalar_t__ fb_find_best_mode (struct fb_var_screeninfo*,int *) ;
 scalar_t__ fb_match_mode (struct fb_var_screeninfo*,int *) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode*) ;
 int memcpy (int *,struct fb_videomode*,int) ;
 int pixfmt_to_var (struct fb_var_screeninfo*,int) ;
 int var_to_pixfmt (struct fb_var_screeninfo*) ;

__attribute__((used)) static int var_update(struct fb_info *info)
{
 struct mmpfb_info *fbi = info->par;
 struct fb_var_screeninfo *var = &info->var;
 struct fb_videomode *m;
 int pix_fmt;


 pix_fmt = var_to_pixfmt(var);
 if (pix_fmt < 0)
  return -EINVAL;
 pixfmt_to_var(var, pix_fmt);
 fbi->pix_fmt = pix_fmt;


 m = (struct fb_videomode *)fb_match_mode(var, &info->modelist);
 if (!m) {
  dev_err(fbi->dev, "set par: no match mode, use best mode\n");
  m = (struct fb_videomode *)fb_find_best_mode(var,
    &info->modelist);
  fb_videomode_to_var(var, m);
 }
 memcpy(&fbi->mode, m, sizeof(struct fb_videomode));


 var->yres_virtual = var->yres * 2;
 info->fix.visual = (pix_fmt == PIXFMT_PSEUDOCOLOR) ?
  FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 info->fix.line_length = var->xres_virtual * var->bits_per_pixel / 8;
 info->fix.ypanstep = var->yres;
 return 0;
}
