
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int yres; int xres; int pixclock; } ;
struct TYPE_6__ {TYPE_2__* shared; } ;
struct TYPE_4__ {int max_pixel_clock; } ;
struct TYPE_5__ {TYPE_1__ tmds_setting_info; } ;


 int PICOS2KHZ (int ) ;
 int viafb_fill_crtc_timing (struct fb_var_screeninfo*,int ,int ,int) ;
 int viafb_fill_var_timing_info (struct fb_var_screeninfo*,struct fb_videomode const*) ;
 struct fb_videomode* viafb_get_best_rb_mode (int ,int ,int) ;
 TYPE_3__* viaparinfo ;

void viafb_dvi_set_mode(const struct fb_var_screeninfo *var,
 u16 cxres, u16 cyres, int iga)
{
 struct fb_var_screeninfo dvi_var = *var;
 const struct fb_videomode *rb_mode;
 int maxPixelClock;

 maxPixelClock = viaparinfo->shared->tmds_setting_info.max_pixel_clock;
 if (maxPixelClock && PICOS2KHZ(var->pixclock) / 1000 > maxPixelClock) {
  rb_mode = viafb_get_best_rb_mode(var->xres, var->yres, 60);
  if (rb_mode)
   viafb_fill_var_timing_info(&dvi_var, rb_mode);
 }

 viafb_fill_crtc_timing(&dvi_var, cxres, cyres, iga);
}
