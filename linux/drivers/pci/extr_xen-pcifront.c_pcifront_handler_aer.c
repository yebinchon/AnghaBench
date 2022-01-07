
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcifront_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_pcifront_aer_op (struct pcifront_device*) ;

__attribute__((used)) static irqreturn_t pcifront_handler_aer(int irq, void *dev)
{
 struct pcifront_device *pdev = dev;
 schedule_pcifront_aer_op(pdev);
 return IRQ_HANDLED;
}
