
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_priv_data {int enabling; scalar_t__ enabled; } ;
struct omap_overlay {int id; TYPE_1__* manager; } ;
struct TYPE_2__ {int * output; } ;


 int DSSERR (char*,int ) ;
 int EINVAL ;
 int apply_lock ;
 int data_lock ;
 int dss_apply_ovl_enable (struct omap_overlay*,int) ;
 int dss_check_settings (TYPE_1__*) ;
 int dss_set_go_bits () ;
 int dss_setup_fifos () ;
 int dss_write_regs () ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_ovl_enable(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 unsigned long flags;
 int r;

 mutex_lock(&apply_lock);

 if (op->enabled) {
  r = 0;
  goto err1;
 }

 if (ovl->manager == ((void*)0) || ovl->manager->output == ((void*)0)) {
  r = -EINVAL;
  goto err1;
 }

 spin_lock_irqsave(&data_lock, flags);

 op->enabling = 1;

 r = dss_check_settings(ovl->manager);
 if (r) {
  DSSERR("failed to enable overlay %d: check_settings failed\n",
    ovl->id);
  goto err2;
 }

 dss_setup_fifos();

 op->enabling = 0;
 dss_apply_ovl_enable(ovl, 1);

 dss_write_regs();
 dss_set_go_bits();

 spin_unlock_irqrestore(&data_lock, flags);

 mutex_unlock(&apply_lock);

 return 0;
err2:
 op->enabling = 0;
 spin_unlock_irqrestore(&data_lock, flags);
err1:
 mutex_unlock(&apply_lock);
 return r;
}
