
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xen_pcibk_test_and_schedule_op (struct xen_pcibk_device*) ;

irqreturn_t xen_pcibk_handle_event(int irq, void *dev_id)
{
 struct xen_pcibk_device *pdev = dev_id;

 xen_pcibk_test_and_schedule_op(pdev);

 return IRQ_HANDLED;
}
