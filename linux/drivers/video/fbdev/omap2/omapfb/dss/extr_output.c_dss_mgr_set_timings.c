
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_video_timings {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct TYPE_2__ {int (* set_timings ) (struct omap_overlay_manager*,struct omap_video_timings const*) ;} ;


 TYPE_1__* dss_mgr_ops ;
 int stub1 (struct omap_overlay_manager*,struct omap_video_timings const*) ;

void dss_mgr_set_timings(struct omap_overlay_manager *mgr,
  const struct omap_video_timings *timings)
{
 dss_mgr_ops->set_timings(mgr, timings);
}
