
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct omap_overlay_manager {int name; } ;
struct mgr_priv_data {scalar_t__ updating; } ;


 int DSSERR (char*,int ) ;
 int data_lock ;
 int dss_apply_mgr_timings (struct omap_overlay_manager*,struct omap_video_timings const*) ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dss_mgr_set_timings_compat(struct omap_overlay_manager *mgr,
  const struct omap_video_timings *timings)
{
 unsigned long flags;
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 spin_lock_irqsave(&data_lock, flags);

 if (mp->updating) {
  DSSERR("cannot set timings for %s: manager needs to be disabled\n",
   mgr->name);
  goto out;
 }

 dss_apply_mgr_timings(mgr, timings);
out:
 spin_unlock_irqrestore(&data_lock, flags);
}
