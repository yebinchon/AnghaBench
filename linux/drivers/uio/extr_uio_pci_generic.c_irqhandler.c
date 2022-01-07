
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pci_generic_dev {int pdev; } ;
struct uio_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int pci_check_and_mask_intx (int ) ;
 struct uio_pci_generic_dev* to_uio_pci_generic_dev (struct uio_info*) ;

__attribute__((used)) static irqreturn_t irqhandler(int irq, struct uio_info *info)
{
 struct uio_pci_generic_dev *gdev = to_uio_pci_generic_dev(info);

 if (!pci_check_and_mask_intx(gdev->pdev))
  return IRQ_NONE;


 return IRQ_HANDLED;
}
