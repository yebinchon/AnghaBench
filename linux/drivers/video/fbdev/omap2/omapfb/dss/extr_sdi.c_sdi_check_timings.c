
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_video_timings {scalar_t__ pixelclock; } ;
struct omap_overlay_manager {int id; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_overlay_manager* manager; } ;
struct TYPE_4__ {TYPE_1__ output; } ;


 int EINVAL ;
 int dispc_mgr_timings_ok (int ,struct omap_video_timings*) ;
 TYPE_2__ sdi ;

__attribute__((used)) static int sdi_check_timings(struct omap_dss_device *dssdev,
   struct omap_video_timings *timings)
{
 struct omap_overlay_manager *mgr = sdi.output.manager;

 if (mgr && !dispc_mgr_timings_ok(mgr->id, timings))
  return -EINVAL;

 if (timings->pixelclock == 0)
  return -EINVAL;

 return 0;
}
