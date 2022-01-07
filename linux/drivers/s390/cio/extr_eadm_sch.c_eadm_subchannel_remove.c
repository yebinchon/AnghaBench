
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int * lock; } ;
struct eadm_private {int head; } ;


 int eadm_quiesce (struct subchannel*) ;
 struct eadm_private* get_eadm_private (struct subchannel*) ;
 int kfree (struct eadm_private*) ;
 int list_del (int *) ;
 int list_lock ;
 int set_eadm_private (struct subchannel*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int eadm_subchannel_remove(struct subchannel *sch)
{
 struct eadm_private *private = get_eadm_private(sch);

 spin_lock_irq(&list_lock);
 list_del(&private->head);
 spin_unlock_irq(&list_lock);

 eadm_quiesce(sch);

 spin_lock_irq(sch->lock);
 set_eadm_private(sch, ((void*)0));
 spin_unlock_irq(sch->lock);

 kfree(private);

 return 0;
}
