
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_video_timings {scalar_t__ interlace; } ;
struct omap_dss_device {int dispc_channel; } ;
struct TYPE_2__ {struct omap_dss_device output; } ;


 int EINVAL ;
 int dispc_mgr_timings_ok (int ,struct omap_video_timings*) ;
 TYPE_1__ hdmi ;

__attribute__((used)) static int hdmi_display_check_timing(struct omap_dss_device *dssdev,
     struct omap_video_timings *timings)
{
 struct omap_dss_device *out = &hdmi.output;


 if (timings->interlace)
  return -EINVAL;

 if (!dispc_mgr_timings_ok(out->dispc_channel, timings))
  return -EINVAL;

 return 0;
}
