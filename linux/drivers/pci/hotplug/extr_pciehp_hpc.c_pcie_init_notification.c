
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int notification_enabled; } ;


 int pcie_enable_notification (struct controller*) ;
 scalar_t__ pciehp_request_irq (struct controller*) ;

int pcie_init_notification(struct controller *ctrl)
{
 if (pciehp_request_irq(ctrl))
  return -1;
 pcie_enable_notification(ctrl);
 ctrl->notification_enabled = 1;
 return 0;
}
