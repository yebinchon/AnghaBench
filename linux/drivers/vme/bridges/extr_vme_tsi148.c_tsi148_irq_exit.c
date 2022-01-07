
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;
struct pci_dev {int irq; } ;


 scalar_t__ TSI148_LCSR_INTC ;
 scalar_t__ TSI148_LCSR_INTEN ;
 scalar_t__ TSI148_LCSR_INTEO ;
 int free_irq (int ,struct vme_bridge*) ;
 int iowrite32be (int,scalar_t__) ;

__attribute__((used)) static void tsi148_irq_exit(struct vme_bridge *tsi148_bridge,
 struct pci_dev *pdev)
{
 struct tsi148_driver *bridge = tsi148_bridge->driver_priv;


 iowrite32be(0x0, bridge->base + TSI148_LCSR_INTEO);
 iowrite32be(0x0, bridge->base + TSI148_LCSR_INTEN);


 iowrite32be(0xFFFFFFFF, bridge->base + TSI148_LCSR_INTC);


 free_irq(pdev->irq, tsi148_bridge);
}
