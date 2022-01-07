
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int dev; } ;
struct con3270 {scalar_t__ update_flags; TYPE_1__ view; int timer; scalar_t__ nr_up; } ;


 int con3270_rebuild_update (struct con3270*) ;
 int con3270_update (int *) ;
 int con3270_update_status (struct con3270*) ;
 int con3270_wait_write (struct con3270*) ;
 struct con3270* condev ;
 int raw3270_activate_view (TYPE_1__*) ;
 int raw3270_pm_unfreeze (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
con3270_flush(void)
{
 struct con3270 *cp;
 unsigned long flags;

 cp = condev;
 if (!cp->view.dev)
  return;
 raw3270_pm_unfreeze(&cp->view);
 raw3270_activate_view(&cp->view);
 spin_lock_irqsave(&cp->view.lock, flags);
 con3270_wait_write(cp);
 cp->nr_up = 0;
 con3270_rebuild_update(cp);
 con3270_update_status(cp);
 while (cp->update_flags != 0) {
  spin_unlock_irqrestore(&cp->view.lock, flags);
  con3270_update(&cp->timer);
  spin_lock_irqsave(&cp->view.lock, flags);
  con3270_wait_write(cp);
 }
 spin_unlock_irqrestore(&cp->view.lock, flags);
}
