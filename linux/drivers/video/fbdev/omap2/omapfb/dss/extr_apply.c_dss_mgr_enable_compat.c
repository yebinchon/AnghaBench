
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int id; } ;
struct mgr_priv_data {int enabled; int updating; } ;
struct TYPE_2__ {int irq_enabled; } ;


 int DSSERR (char*,int ) ;
 int apply_lock ;
 int data_lock ;
 int dispc_mgr_enable_sync (int ) ;
 int dss_check_settings (struct omap_overlay_manager*) ;
 TYPE_1__ dss_data ;
 int dss_register_vsync_isr () ;
 int dss_set_go_bits () ;
 int dss_setup_fifos () ;
 int dss_write_regs () ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int mgr_manual_update (struct omap_overlay_manager*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ need_isr () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_mgr_enable_compat(struct omap_overlay_manager *mgr)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);
 unsigned long flags;
 int r;

 mutex_lock(&apply_lock);

 if (mp->enabled)
  goto out;

 spin_lock_irqsave(&data_lock, flags);

 mp->enabled = 1;

 r = dss_check_settings(mgr);
 if (r) {
  DSSERR("failed to enable manager %d: check_settings failed\n",
    mgr->id);
  goto err;
 }

 dss_setup_fifos();

 dss_write_regs();
 dss_set_go_bits();

 if (!mgr_manual_update(mgr))
  mp->updating = 1;

 if (!dss_data.irq_enabled && need_isr())
  dss_register_vsync_isr();

 spin_unlock_irqrestore(&data_lock, flags);

 if (!mgr_manual_update(mgr))
  dispc_mgr_enable_sync(mgr->id);

out:
 mutex_unlock(&apply_lock);

 return 0;

err:
 mp->enabled = 0;
 spin_unlock_irqrestore(&data_lock, flags);
 mutex_unlock(&apply_lock);
 return r;
}
