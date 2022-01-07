
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_priv_data {scalar_t__ extra_info_dirty; scalar_t__ enabled; } ;
struct omap_overlay {int list; int * manager; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int apply_lock ;
 int data_lock ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ovl_manual_update (struct omap_overlay*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_pending_extra_info_updates () ;

__attribute__((used)) static int dss_ovl_unset_manager(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 unsigned long flags;
 int r;

 mutex_lock(&apply_lock);

 if (!ovl->manager) {
  DSSERR("failed to detach overlay: manager not set\n");
  r = -EINVAL;
  goto err;
 }

 spin_lock_irqsave(&data_lock, flags);

 if (op->enabled) {
  spin_unlock_irqrestore(&data_lock, flags);
  DSSERR("overlay has to be disabled to unset the manager\n");
  r = -EINVAL;
  goto err;
 }

 spin_unlock_irqrestore(&data_lock, flags);


 wait_pending_extra_info_updates();
 spin_lock_irqsave(&data_lock, flags);

 if (ovl_manual_update(ovl) && op->extra_info_dirty) {
  spin_unlock_irqrestore(&data_lock, flags);
  DSSERR("need an update to change the manager\n");
  r = -EINVAL;
  goto err;
 }

 ovl->manager = ((void*)0);
 list_del(&ovl->list);

 spin_unlock_irqrestore(&data_lock, flags);

 mutex_unlock(&apply_lock);

 return 0;
err:
 mutex_unlock(&apply_lock);
 return r;
}
