
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int vbp; int vfp; int vsw; int hbp; int hfp; int hsw; scalar_t__ interlace; int pixelclock; int y_res; int x_res; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int _dispc_lcd_timings_ok (int ,int ,int ,int ,int ,int ) ;
 int _dispc_mgr_pclk_ok (int,int ) ;
 int _dispc_mgr_size_ok (int ,int ) ;
 scalar_t__ dss_mgr_is_lcd (int) ;

bool dispc_mgr_timings_ok(enum omap_channel channel,
  const struct omap_video_timings *timings)
{
 if (!_dispc_mgr_size_ok(timings->x_res, timings->y_res))
  return 0;

 if (!_dispc_mgr_pclk_ok(channel, timings->pixelclock))
  return 0;

 if (dss_mgr_is_lcd(channel)) {

  if (timings->interlace)
   return 0;

  if (!_dispc_lcd_timings_ok(timings->hsw, timings->hfp,
    timings->hbp, timings->vsw, timings->vfp,
    timings->vbp))
   return 0;
 }

 return 1;
}
