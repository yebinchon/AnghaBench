
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ovl_priv_data {int info_dirty; int shadow_info_dirty; } ;
struct omap_overlay {int id; TYPE_1__* manager; } ;
struct mgr_priv_data {int enabled; } ;
struct TYPE_2__ {int id; } ;


 int DSSERR (char*,int ) ;
 int ERESTARTSYS ;
 int data_lock ;
 int dispc_mgr_get_vsync_irq (int ) ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 struct mgr_priv_data* get_mgr_priv (TYPE_1__*) ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 unsigned long msecs_to_jiffies (int) ;
 int omap_dispc_wait_for_irq_interruptible_timeout (int ,unsigned long) ;
 scalar_t__ ovl_manual_update (struct omap_overlay*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_mgr_wait_for_go_ovl(struct omap_overlay *ovl)
{
 unsigned long timeout = msecs_to_jiffies(500);
 struct ovl_priv_data *op;
 struct mgr_priv_data *mp;
 u32 irq;
 unsigned long flags;
 int r;
 int i;

 if (!ovl->manager)
  return 0;

 mp = get_mgr_priv(ovl->manager);

 spin_lock_irqsave(&data_lock, flags);

 if (ovl_manual_update(ovl)) {
  spin_unlock_irqrestore(&data_lock, flags);
  return 0;
 }

 if (!mp->enabled) {
  spin_unlock_irqrestore(&data_lock, flags);
  return 0;
 }

 spin_unlock_irqrestore(&data_lock, flags);

 r = dispc_runtime_get();
 if (r)
  return r;

 irq = dispc_mgr_get_vsync_irq(ovl->manager->id);

 op = get_ovl_priv(ovl);
 i = 0;
 while (1) {
  bool shadow_dirty, dirty;

  spin_lock_irqsave(&data_lock, flags);
  dirty = op->info_dirty;
  shadow_dirty = op->shadow_info_dirty;
  spin_unlock_irqrestore(&data_lock, flags);

  if (!dirty && !shadow_dirty) {
   r = 0;
   break;
  }






  if (i++ == 3) {
   DSSERR("ovl(%d)->wait_for_go() not finishing\n",
     ovl->id);
   r = 0;
   break;
  }

  r = omap_dispc_wait_for_irq_interruptible_timeout(irq, timeout);
  if (r == -ERESTARTSYS)
   break;

  if (r) {
   DSSERR("ovl(%d)->wait_for_go() timeout\n", ovl->id);
   break;
  }
 }

 dispc_runtime_put();

 return r;
}
