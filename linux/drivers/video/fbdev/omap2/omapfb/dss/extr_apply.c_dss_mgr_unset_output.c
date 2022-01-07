
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {TYPE_1__* output; } ;
struct mgr_priv_data {scalar_t__ enabled; } ;
struct TYPE_2__ {int * manager; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int apply_lock ;
 int data_lock ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_mgr_unset_output(struct omap_overlay_manager *mgr)
{
 int r;
 struct mgr_priv_data *mp = get_mgr_priv(mgr);
 unsigned long flags;

 mutex_lock(&apply_lock);

 if (!mgr->output) {
  DSSERR("failed to unset output, output not set\n");
  r = -EINVAL;
  goto err;
 }

 spin_lock_irqsave(&data_lock, flags);

 if (mp->enabled) {
  DSSERR("output can't be unset when manager is enabled\n");
  r = -EINVAL;
  goto err1;
 }

 spin_unlock_irqrestore(&data_lock, flags);

 mgr->output->manager = ((void*)0);
 mgr->output = ((void*)0);

 mutex_unlock(&apply_lock);

 return 0;
err1:
 spin_unlock_irqrestore(&data_lock, flags);
err:
 mutex_unlock(&apply_lock);

 return r;
}
