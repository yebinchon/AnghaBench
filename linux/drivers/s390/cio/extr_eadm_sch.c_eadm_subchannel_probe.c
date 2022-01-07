
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int kobj; } ;
struct subchannel {TYPE_1__ dev; int * lock; int isc; } ;
struct eadm_private {int head; struct subchannel* sch; int state; int timer; } ;


 int EADM_IDLE ;
 int EADM_SCH_ISC ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KOBJ_ADD ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 scalar_t__ dev_get_uevent_suppress (TYPE_1__*) ;
 int dev_set_uevent_suppress (TYPE_1__*,int ) ;
 int eadm_list ;
 int eadm_subchannel_timeout ;
 int kfree (struct eadm_private*) ;
 int kobject_uevent (int *,int ) ;
 struct eadm_private* kzalloc (int,int) ;
 int list_add (int *,int *) ;
 int list_lock ;
 int set_eadm_private (struct subchannel*,struct eadm_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int eadm_subchannel_probe(struct subchannel *sch)
{
 struct eadm_private *private;
 int ret;

 private = kzalloc(sizeof(*private), GFP_KERNEL | GFP_DMA);
 if (!private)
  return -ENOMEM;

 INIT_LIST_HEAD(&private->head);
 timer_setup(&private->timer, eadm_subchannel_timeout, 0);

 spin_lock_irq(sch->lock);
 set_eadm_private(sch, private);
 private->state = EADM_IDLE;
 private->sch = sch;
 sch->isc = EADM_SCH_ISC;
 ret = cio_enable_subchannel(sch, (u32)(unsigned long)sch);
 if (ret) {
  set_eadm_private(sch, ((void*)0));
  spin_unlock_irq(sch->lock);
  kfree(private);
  goto out;
 }
 spin_unlock_irq(sch->lock);

 spin_lock_irq(&list_lock);
 list_add(&private->head, &eadm_list);
 spin_unlock_irq(&list_lock);

 if (dev_get_uevent_suppress(&sch->dev)) {
  dev_set_uevent_suppress(&sch->dev, 0);
  kobject_uevent(&sch->dev.kobj, KOBJ_ADD);
 }
out:
 return ret;
}
