
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_video_timings {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {struct omap_video_timings timings; } ;


 TYPE_1__ sdi ;

__attribute__((used)) static void sdi_get_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 *timings = sdi.timings;
}
