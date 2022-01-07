
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int lock; } ;
struct eadm_private {scalar_t__ state; int * completion; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 scalar_t__ EADM_BUSY ;
 int EBUSY ;
 int cio_disable_subchannel (struct subchannel*) ;
 int completion ;
 scalar_t__ eadm_subchannel_clear (struct subchannel*) ;
 int eadm_subchannel_set_timeout (struct subchannel*,int ) ;
 struct eadm_private* get_eadm_private (struct subchannel*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_for_completion_io (int *) ;

__attribute__((used)) static void eadm_quiesce(struct subchannel *sch)
{
 struct eadm_private *private = get_eadm_private(sch);
 DECLARE_COMPLETION_ONSTACK(completion);
 int ret;

 spin_lock_irq(sch->lock);
 if (private->state != EADM_BUSY)
  goto disable;

 if (eadm_subchannel_clear(sch))
  goto disable;

 private->completion = &completion;
 spin_unlock_irq(sch->lock);

 wait_for_completion_io(&completion);

 spin_lock_irq(sch->lock);
 private->completion = ((void*)0);

disable:
 eadm_subchannel_set_timeout(sch, 0);
 do {
  ret = cio_disable_subchannel(sch);
 } while (ret == -EBUSY);

 spin_unlock_irq(sch->lock);
}
