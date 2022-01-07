
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_video_timings {scalar_t__ vsync_level; scalar_t__ hsync_level; int interlace; } ;
struct hdmi_wp_data {int base; } ;


 int DSSDBG (char*) ;
 int FLD_MOD (int ,int,int,int) ;
 int HDMI_WP_VIDEO_CFG ;
 scalar_t__ OMAPDSS_SIG_ACTIVE_HIGH ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int ) ;

void hdmi_wp_video_config_interface(struct hdmi_wp_data *wp,
  struct omap_video_timings *timings)
{
 u32 r;
 bool vsync_pol, hsync_pol;
 DSSDBG("Enter hdmi_wp_video_config_interface\n");

 vsync_pol = timings->vsync_level == OMAPDSS_SIG_ACTIVE_HIGH;
 hsync_pol = timings->hsync_level == OMAPDSS_SIG_ACTIVE_HIGH;

 r = hdmi_read_reg(wp->base, HDMI_WP_VIDEO_CFG);
 r = FLD_MOD(r, vsync_pol, 7, 7);
 r = FLD_MOD(r, hsync_pol, 6, 6);
 r = FLD_MOD(r, timings->interlace, 3, 3);
 r = FLD_MOD(r, 1, 1, 0);
 hdmi_write_reg(wp->base, HDMI_WP_VIDEO_CFG, r);
}
