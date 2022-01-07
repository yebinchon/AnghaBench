
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int id; } ;
struct mgr_priv_data {int updating; } ;
struct TYPE_2__ {int irq_enabled; } ;


 int DSSERR (char*) ;
 int WARN_ON (int) ;
 int data_lock ;
 int dispc_mgr_enable_sync (int ) ;
 int dss_check_settings (struct omap_overlay_manager*) ;
 TYPE_1__ dss_data ;
 int dss_mgr_write_regs (struct omap_overlay_manager*) ;
 int dss_mgr_write_regs_extra (struct omap_overlay_manager*) ;
 int dss_register_vsync_isr () ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 scalar_t__ need_isr () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dss_mgr_start_update_compat(struct omap_overlay_manager *mgr)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);
 unsigned long flags;
 int r;

 spin_lock_irqsave(&data_lock, flags);

 WARN_ON(mp->updating);

 r = dss_check_settings(mgr);
 if (r) {
  DSSERR("cannot start manual update: illegal configuration\n");
  spin_unlock_irqrestore(&data_lock, flags);
  return;
 }

 dss_mgr_write_regs(mgr);
 dss_mgr_write_regs_extra(mgr);

 mp->updating = 1;

 if (!dss_data.irq_enabled && need_isr())
  dss_register_vsync_isr();

 dispc_mgr_enable_sync(mgr->id);

 spin_unlock_irqrestore(&data_lock, flags);
}
