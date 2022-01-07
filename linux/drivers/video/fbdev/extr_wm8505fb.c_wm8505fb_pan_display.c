
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8505fb_info {scalar_t__ regbase; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct fb_info {int dummy; } ;


 scalar_t__ WMT_GOVR_XPAN ;
 scalar_t__ WMT_GOVR_YPAN ;
 struct wm8505fb_info* to_wm8505fb_info (struct fb_info*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int wm8505fb_pan_display(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct wm8505fb_info *fbi = to_wm8505fb_info(info);

 writel(var->xoffset, fbi->regbase + WMT_GOVR_XPAN);
 writel(var->yoffset, fbi->regbase + WMT_GOVR_YPAN);
 return 0;
}
