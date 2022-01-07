
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {unsigned int x_res; unsigned int y_res; unsigned int hsw; unsigned int hfp; unsigned int hbp; unsigned int vsw; unsigned int vfp; unsigned int vbp; unsigned int pixelclock; scalar_t__ interlace; int sync_pclk_edge; int de_level; int data_pclk_edge; int hsync_level; int vsync_level; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int BUG () ;
 int DSSDBG (char*,unsigned long,...) ;
 int _dispc_mgr_set_lcd_timings (int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int ,int ,int ,int ,int ) ;
 int dispc_mgr_set_size (int,unsigned int,int) ;
 int dispc_mgr_timings_ok (int,struct omap_video_timings*) ;
 scalar_t__ dss_mgr_is_lcd (int) ;

void dispc_mgr_set_timings(enum omap_channel channel,
  const struct omap_video_timings *timings)
{
 unsigned xtot, ytot;
 unsigned long ht, vt;
 struct omap_video_timings t = *timings;

 DSSDBG("channel %d xres %u yres %u\n", channel, t.x_res, t.y_res);

 if (!dispc_mgr_timings_ok(channel, &t)) {
  BUG();
  return;
 }

 if (dss_mgr_is_lcd(channel)) {
  _dispc_mgr_set_lcd_timings(channel, t.hsw, t.hfp, t.hbp, t.vsw,
    t.vfp, t.vbp, t.vsync_level, t.hsync_level,
    t.data_pclk_edge, t.de_level, t.sync_pclk_edge);

  xtot = t.x_res + t.hfp + t.hsw + t.hbp;
  ytot = t.y_res + t.vfp + t.vsw + t.vbp;

  ht = timings->pixelclock / xtot;
  vt = timings->pixelclock / xtot / ytot;

  DSSDBG("pck %u\n", timings->pixelclock);
  DSSDBG("hsw %d hfp %d hbp %d vsw %d vfp %d vbp %d\n",
   t.hsw, t.hfp, t.hbp, t.vsw, t.vfp, t.vbp);
  DSSDBG("vsync_level %d hsync_level %d data_pclk_edge %d de_level %d sync_pclk_edge %d\n",
   t.vsync_level, t.hsync_level, t.data_pclk_edge,
   t.de_level, t.sync_pclk_edge);

  DSSDBG("hsync %luHz, vsync %luHz\n", ht, vt);
 } else {
  if (t.interlace)
   t.y_res /= 2;
 }

 dispc_mgr_set_size(channel, t.x_res, t.y_res);
}
