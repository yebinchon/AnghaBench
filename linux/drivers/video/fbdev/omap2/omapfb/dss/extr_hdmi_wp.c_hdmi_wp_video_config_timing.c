
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_video_timings {int vsw; int vfp; int vbp; int hsw; int hfp; int hbp; } ;
struct hdmi_wp_data {int base; } ;


 int DSSDBG (char*) ;
 int FLD_VAL (int ,int,int) ;
 int HDMI_WP_VIDEO_TIMING_H ;
 int HDMI_WP_VIDEO_TIMING_V ;
 int hdmi_write_reg (int ,int ,int ) ;

void hdmi_wp_video_config_timing(struct hdmi_wp_data *wp,
  struct omap_video_timings *timings)
{
 u32 timing_h = 0;
 u32 timing_v = 0;

 DSSDBG("Enter hdmi_wp_video_config_timing\n");

 timing_h |= FLD_VAL(timings->hbp, 31, 20);
 timing_h |= FLD_VAL(timings->hfp, 19, 8);
 timing_h |= FLD_VAL(timings->hsw, 7, 0);
 hdmi_write_reg(wp->base, HDMI_WP_VIDEO_TIMING_H, timing_h);

 timing_v |= FLD_VAL(timings->vbp, 31, 20);
 timing_v |= FLD_VAL(timings->vfp, 19, 8);
 timing_v |= FLD_VAL(timings->vsw, 7, 0);
 hdmi_write_reg(wp->base, HDMI_WP_VIDEO_TIMING_V, timing_v);
}
