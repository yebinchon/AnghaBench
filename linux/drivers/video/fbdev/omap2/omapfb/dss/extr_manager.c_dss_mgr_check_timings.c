
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct omap_overlay_manager {int id; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int dispc_mgr_timings_ok (int ,struct omap_video_timings const*) ;

int dss_mgr_check_timings(struct omap_overlay_manager *mgr,
  const struct omap_video_timings *timings)
{
 if (!dispc_mgr_timings_ok(mgr->id, timings)) {
  DSSERR("check_manager: invalid timings\n");
  return -EINVAL;
 }

 return 0;
}
