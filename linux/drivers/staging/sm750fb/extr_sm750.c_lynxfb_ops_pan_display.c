
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynxfb_crtc {int dummy; } ;
struct lynxfb_par {struct lynxfb_crtc crtc; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct lynxfb_par* par; } ;


 int EINVAL ;
 int hw_sm750_pan_display (struct lynxfb_crtc*,struct fb_var_screeninfo*,struct fb_info*) ;

__attribute__((used)) static int lynxfb_ops_pan_display(struct fb_var_screeninfo *var,
      struct fb_info *info)
{
 struct lynxfb_par *par;
 struct lynxfb_crtc *crtc;

 if (!info)
  return -EINVAL;

 par = info->par;
 crtc = &par->crtc;
 return hw_sm750_pan_display(crtc, var, info);
}
