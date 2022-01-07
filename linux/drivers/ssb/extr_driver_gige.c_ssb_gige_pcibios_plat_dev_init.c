
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int end; int start; int name; } ;
struct ssb_gige {TYPE_2__ mem_resource; int pci_ops; } ;
struct ssb_device {int dummy; } ;
struct resource {int flags; int end; int start; int name; } ;
struct pci_dev {scalar_t__ irq; struct resource* resource; TYPE_1__* bus; } ;
struct TYPE_3__ {int * ops; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 int IORESOURCE_PCI_FIXED ;
 int PCI_INTERRUPT_LINE ;
 int pci_write_config_byte (struct pci_dev*,int ,scalar_t__) ;
 struct ssb_gige* ssb_get_drvdata (struct ssb_device*) ;
 scalar_t__ ssb_mips_irq (struct ssb_device*) ;

int ssb_gige_pcibios_plat_dev_init(struct ssb_device *sdev,
       struct pci_dev *pdev)
{
 struct ssb_gige *dev = ssb_get_drvdata(sdev);
 struct resource *res;

 if (pdev->bus->ops != &dev->pci_ops) {

  return -ENODEV;
 }


 res = &(pdev->resource[0]);
 res->flags = IORESOURCE_MEM | IORESOURCE_PCI_FIXED;
 res->name = dev->mem_resource.name;
 res->start = dev->mem_resource.start;
 res->end = dev->mem_resource.end;


 pdev->irq = ssb_mips_irq(sdev) + 2;
 pci_write_config_byte(pdev, PCI_INTERRUPT_LINE, pdev->irq);

 return 0;
}
