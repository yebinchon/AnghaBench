
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_priv_data {scalar_t__ enabled; } ;
struct omap_overlay_manager {int overlays; int id; int name; } ;
struct omap_overlay {int list; struct omap_overlay_manager* manager; int id; int name; } ;


 int DSSERR (char*,...) ;
 int EINVAL ;
 int apply_lock ;
 int data_lock ;
 int dispc_ovl_set_channel_out (int ,int ) ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_ovl_set_manager(struct omap_overlay *ovl,
  struct omap_overlay_manager *mgr)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 unsigned long flags;
 int r;

 if (!mgr)
  return -EINVAL;

 mutex_lock(&apply_lock);

 if (ovl->manager) {
  DSSERR("overlay '%s' already has a manager '%s'\n",
    ovl->name, ovl->manager->name);
  r = -EINVAL;
  goto err;
 }

 r = dispc_runtime_get();
 if (r)
  goto err;

 spin_lock_irqsave(&data_lock, flags);

 if (op->enabled) {
  spin_unlock_irqrestore(&data_lock, flags);
  DSSERR("overlay has to be disabled to change the manager\n");
  r = -EINVAL;
  goto err1;
 }

 dispc_ovl_set_channel_out(ovl->id, mgr->id);

 ovl->manager = mgr;
 list_add_tail(&ovl->list, &mgr->overlays);

 spin_unlock_irqrestore(&data_lock, flags);

 dispc_runtime_put();

 mutex_unlock(&apply_lock);

 return 0;

err1:
 dispc_runtime_put();
err:
 mutex_unlock(&apply_lock);
 return r;
}
