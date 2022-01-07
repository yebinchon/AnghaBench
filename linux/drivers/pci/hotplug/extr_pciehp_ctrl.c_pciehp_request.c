
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {TYPE_1__* pcie; int pending_events; } ;
struct TYPE_2__ {int irq; } ;


 int atomic_or (int,int *) ;
 int irq_wake_thread (int ,struct controller*) ;
 int pciehp_poll_mode ;

void pciehp_request(struct controller *ctrl, int action)
{
 atomic_or(action, &ctrl->pending_events);
 if (!pciehp_poll_mode)
  irq_wake_thread(ctrl->pcie->irq, ctrl);
}
