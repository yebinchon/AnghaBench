
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int name; } ;
struct mgr_priv_data {scalar_t__ enabled; } ;
struct dss_lcd_mgr_config {int dummy; } ;


 int DSSERR (char*,int ) ;
 int data_lock ;
 int dss_apply_mgr_lcd_config (struct omap_overlay_manager*,struct dss_lcd_mgr_config const*) ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dss_mgr_set_lcd_config_compat(struct omap_overlay_manager *mgr,
  const struct dss_lcd_mgr_config *config)
{
 unsigned long flags;
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 spin_lock_irqsave(&data_lock, flags);

 if (mp->enabled) {
  DSSERR("cannot apply lcd config for %s: manager needs to be disabled\n",
   mgr->name);
  goto out;
 }

 dss_apply_mgr_lcd_config(mgr, config);
out:
 spin_unlock_irqrestore(&data_lock, flags);
}
