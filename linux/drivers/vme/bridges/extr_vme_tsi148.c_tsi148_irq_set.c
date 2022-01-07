
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;
struct pci_dev {int irq; } ;


 scalar_t__ TSI148_LCSR_INTEN ;
 int * TSI148_LCSR_INTEN_IRQEN ;
 scalar_t__ TSI148_LCSR_INTEO ;
 int * TSI148_LCSR_INTEO_IRQEO ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;
 int synchronize_irq (int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void tsi148_irq_set(struct vme_bridge *tsi148_bridge, int level,
 int state, int sync)
{
 struct pci_dev *pdev;
 u32 tmp;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;


 if (state == 0) {
  tmp = ioread32be(bridge->base + TSI148_LCSR_INTEN);
  tmp &= ~TSI148_LCSR_INTEN_IRQEN[level - 1];
  iowrite32be(tmp, bridge->base + TSI148_LCSR_INTEN);

  tmp = ioread32be(bridge->base + TSI148_LCSR_INTEO);
  tmp &= ~TSI148_LCSR_INTEO_IRQEO[level - 1];
  iowrite32be(tmp, bridge->base + TSI148_LCSR_INTEO);

  if (sync != 0) {
   pdev = to_pci_dev(tsi148_bridge->parent);
   synchronize_irq(pdev->irq);
  }
 } else {
  tmp = ioread32be(bridge->base + TSI148_LCSR_INTEO);
  tmp |= TSI148_LCSR_INTEO_IRQEO[level - 1];
  iowrite32be(tmp, bridge->base + TSI148_LCSR_INTEO);

  tmp = ioread32be(bridge->base + TSI148_LCSR_INTEN);
  tmp |= TSI148_LCSR_INTEN_IRQEN[level - 1];
  iowrite32be(tmp, bridge->base + TSI148_LCSR_INTEN);
 }
}
