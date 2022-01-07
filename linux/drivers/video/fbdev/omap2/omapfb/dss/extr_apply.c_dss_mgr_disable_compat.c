
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int id; } ;
struct mgr_priv_data {int enabled; int updating; } ;


 int apply_lock ;
 int data_lock ;
 int dispc_mgr_disable_sync (int ) ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int mgr_manual_update (struct omap_overlay_manager*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_pending_extra_info_updates () ;

__attribute__((used)) static void dss_mgr_disable_compat(struct omap_overlay_manager *mgr)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);
 unsigned long flags;

 mutex_lock(&apply_lock);

 if (!mp->enabled)
  goto out;

 wait_pending_extra_info_updates();

 if (!mgr_manual_update(mgr))
  dispc_mgr_disable_sync(mgr->id);

 spin_lock_irqsave(&data_lock, flags);

 mp->updating = 0;
 mp->enabled = 0;

 spin_unlock_irqrestore(&data_lock, flags);

out:
 mutex_unlock(&apply_lock);
}
