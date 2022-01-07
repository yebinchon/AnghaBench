
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {int user_info_dirty; struct omap_overlay_manager_info user_info; } ;


 int data_lock ;
 int dss_mgr_simple_check (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_mgr_set_info(struct omap_overlay_manager *mgr,
  struct omap_overlay_manager_info *info)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);
 unsigned long flags;
 int r;

 r = dss_mgr_simple_check(mgr, info);
 if (r)
  return r;

 spin_lock_irqsave(&data_lock, flags);

 mp->user_info = *info;
 mp->user_info_dirty = 1;

 spin_unlock_irqrestore(&data_lock, flags);

 return 0;
}
