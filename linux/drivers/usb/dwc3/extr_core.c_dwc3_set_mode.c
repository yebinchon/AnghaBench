
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int drd_work; int lock; int desired_dr_role; } ;


 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_freezable_wq ;

void dwc3_set_mode(struct dwc3 *dwc, u32 mode)
{
 unsigned long flags;

 spin_lock_irqsave(&dwc->lock, flags);
 dwc->desired_dr_role = mode;
 spin_unlock_irqrestore(&dwc->lock, flags);

 queue_work(system_freezable_wq, &dwc->drd_work);
}
