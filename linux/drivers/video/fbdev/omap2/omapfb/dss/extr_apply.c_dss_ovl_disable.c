
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_priv_data {int enabled; } ;
struct omap_overlay {TYPE_1__* manager; } ;
struct TYPE_2__ {int * output; } ;


 int EINVAL ;
 int apply_lock ;
 int data_lock ;
 int dss_apply_ovl_enable (struct omap_overlay*,int) ;
 int dss_set_go_bits () ;
 int dss_write_regs () ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_ovl_disable(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 unsigned long flags;
 int r;

 mutex_lock(&apply_lock);

 if (!op->enabled) {
  r = 0;
  goto err;
 }

 if (ovl->manager == ((void*)0) || ovl->manager->output == ((void*)0)) {
  r = -EINVAL;
  goto err;
 }

 spin_lock_irqsave(&data_lock, flags);

 dss_apply_ovl_enable(ovl, 0);
 dss_write_regs();
 dss_set_go_bits();

 spin_unlock_irqrestore(&data_lock, flags);

 mutex_unlock(&apply_lock);

 return 0;

err:
 mutex_unlock(&apply_lock);
 return r;
}
