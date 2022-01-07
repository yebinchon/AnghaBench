
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {struct omap_overlay_manager_info user_info; } ;


 int data_lock ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dss_mgr_get_info(struct omap_overlay_manager *mgr,
  struct omap_overlay_manager_info *info)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);
 unsigned long flags;

 spin_lock_irqsave(&data_lock, flags);

 *info = mp->user_info;

 spin_unlock_irqrestore(&data_lock, flags);
}
