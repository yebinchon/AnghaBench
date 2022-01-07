
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_video_timings {int pixelclock; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_video_timings timings; } ;
struct TYPE_4__ {int lock; TYPE_1__ cfg; } ;


 int dispc_set_tv_pclk (int ) ;
 TYPE_2__ hdmi ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_display_set_timing(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 mutex_lock(&hdmi.lock);

 hdmi.cfg.timings = *timings;

 dispc_set_tv_pclk(timings->pixelclock);

 mutex_unlock(&hdmi.lock);
}
