
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {int poll_thread; TYPE_1__* pcie; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int PTR_ERR_OR_ZERO (int ) ;
 int ctrl_err (struct controller*,char*,int) ;
 int kthread_run (int *,struct controller*,char*,int ) ;
 int pciehp_isr ;
 int pciehp_ist ;
 int pciehp_poll ;
 scalar_t__ pciehp_poll_mode ;
 int request_threaded_irq (int,int ,int ,int ,char*,struct controller*) ;
 int slot_name (struct controller*) ;

__attribute__((used)) static inline int pciehp_request_irq(struct controller *ctrl)
{
 int retval, irq = ctrl->pcie->irq;

 if (pciehp_poll_mode) {
  ctrl->poll_thread = kthread_run(&pciehp_poll, ctrl,
      "pciehp_poll-%s",
      slot_name(ctrl));
  return PTR_ERR_OR_ZERO(ctrl->poll_thread);
 }


 retval = request_threaded_irq(irq, pciehp_isr, pciehp_ist,
          IRQF_SHARED, "pciehp", ctrl);
 if (retval)
  ctrl_err(ctrl, "Cannot get irq %d for the hotplug controller\n",
    irq);
 return retval;
}
