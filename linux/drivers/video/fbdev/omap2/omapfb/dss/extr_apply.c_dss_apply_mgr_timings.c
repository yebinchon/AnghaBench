
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {int extra_info_dirty; struct omap_video_timings timings; } ;


 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;

__attribute__((used)) static void dss_apply_mgr_timings(struct omap_overlay_manager *mgr,
  const struct omap_video_timings *timings)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 mp->timings = *timings;
 mp->extra_info_dirty = 1;
}
