
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8505fb_info {scalar_t__ regbase; } ;
struct fb_info {int dummy; } ;



 scalar_t__ WMT_GOVR_TIMING_V_SYNC ;
 struct wm8505fb_info* to_wm8505fb_info (struct fb_info*) ;
 int wm8505fb_set_timing (struct fb_info*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int wm8505fb_blank(int blank, struct fb_info *info)
{
 struct wm8505fb_info *fbi = to_wm8505fb_info(info);

 switch (blank) {
 case 128:
  wm8505fb_set_timing(info);
  break;
 default:
  writel(0, fbi->regbase + WMT_GOVR_TIMING_V_SYNC);
  break;
 }

 return 0;
}
