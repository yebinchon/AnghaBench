
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udc {int virt_addr; TYPE_1__* regs; int driver; } ;
struct pci_dev {int irq; } ;
struct TYPE_4__ {int gadget; } ;
struct TYPE_3__ {int cfg; } ;


 int AMD_BIT (int ) ;
 int UDC_DEVCFG_SOFTRESET ;
 scalar_t__ WARN_ON (int ) ;
 int free_dma_pools (struct udc*) ;
 int free_irq (int ,struct udc*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct udc* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int release_mem_region (int ,int ) ;
 TYPE_2__* udc ;
 int udc_remove (struct udc*) ;
 int usb_del_gadget_udc (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void udc_pci_remove(struct pci_dev *pdev)
{
 struct udc *dev;

 dev = pci_get_drvdata(pdev);

 usb_del_gadget_udc(&udc->gadget);

 if (WARN_ON(dev->driver))
  return;


 free_dma_pools(dev);


 writel(AMD_BIT(UDC_DEVCFG_SOFTRESET), &dev->regs->cfg);
 free_irq(pdev->irq, dev);
 iounmap(dev->virt_addr);
 release_mem_region(pci_resource_start(pdev, 0),
      pci_resource_len(pdev, 0));
 pci_disable_device(pdev);

 udc_remove(dev);
}
