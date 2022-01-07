
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_video_timings {scalar_t__ interlace; int hsync_level; int vsync_level; int vsw; int vfp; int vbp; int hsw; int hfp; int hbp; } ;
struct hdmi_video_format {int y_res; int x_res; int packing_mode; } ;
struct TYPE_2__ {int y_res; scalar_t__ interlace; int hsync_level; int vsync_level; int vsw; int vfp; int vbp; int hsw; int hfp; int hbp; int x_res; } ;
struct hdmi_config {TYPE_1__ timings; } ;


 int DSSDBG (char*) ;
 int HDMI_PACK_10b_RGB_YUV444 ;

void hdmi_wp_init_vid_fmt_timings(struct hdmi_video_format *video_fmt,
  struct omap_video_timings *timings, struct hdmi_config *param)
{
 DSSDBG("Enter hdmi_wp_video_init_format\n");

 video_fmt->packing_mode = HDMI_PACK_10b_RGB_YUV444;
 video_fmt->y_res = param->timings.y_res;
 video_fmt->x_res = param->timings.x_res;
 if (param->timings.interlace)
  video_fmt->y_res /= 2;

 timings->hbp = param->timings.hbp;
 timings->hfp = param->timings.hfp;
 timings->hsw = param->timings.hsw;
 timings->vbp = param->timings.vbp;
 timings->vfp = param->timings.vfp;
 timings->vsw = param->timings.vsw;
 timings->vsync_level = param->timings.vsync_level;
 timings->hsync_level = param->timings.hsync_level;
 timings->interlace = param->timings.interlace;
}
