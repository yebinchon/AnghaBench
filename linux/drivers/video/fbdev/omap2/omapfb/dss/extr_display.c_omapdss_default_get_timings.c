
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_video_timings {int dummy; } ;
struct TYPE_2__ {struct omap_video_timings timings; } ;
struct omap_dss_device {TYPE_1__ panel; } ;



void omapdss_default_get_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 *timings = dssdev->panel.timings;
}
