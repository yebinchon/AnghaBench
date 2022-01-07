
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct intel_ntb_dev {TYPE_2__ ntb; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ irq; } ;


 int ndev_interrupt (struct intel_ntb_dev*,scalar_t__) ;

__attribute__((used)) static irqreturn_t ndev_irq_isr(int irq, void *dev)
{
 struct intel_ntb_dev *ndev = dev;

 return ndev_interrupt(ndev, irq - ndev->ntb.pdev->irq);
}
