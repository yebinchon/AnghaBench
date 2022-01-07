
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {TYPE_1__* pcie; int poll_thread; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,struct controller*) ;
 int kthread_stop (int ) ;
 scalar_t__ pciehp_poll_mode ;

__attribute__((used)) static inline void pciehp_free_irq(struct controller *ctrl)
{
 if (pciehp_poll_mode)
  kthread_stop(ctrl->poll_thread);
 else
  free_irq(ctrl->pcie->irq, ctrl);
}
