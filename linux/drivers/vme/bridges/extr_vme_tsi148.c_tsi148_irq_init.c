
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;
struct pci_dev {int irq; } ;


 int IRQF_SHARED ;
 scalar_t__ TSI148_LCSR_INTEN ;
 scalar_t__ TSI148_LCSR_INTEO ;
 unsigned int TSI148_LCSR_INTEO_DMA0EO ;
 unsigned int TSI148_LCSR_INTEO_DMA1EO ;
 unsigned int TSI148_LCSR_INTEO_IACKEO ;
 unsigned int TSI148_LCSR_INTEO_MB0EO ;
 unsigned int TSI148_LCSR_INTEO_MB1EO ;
 unsigned int TSI148_LCSR_INTEO_MB2EO ;
 unsigned int TSI148_LCSR_INTEO_MB3EO ;
 unsigned int TSI148_LCSR_INTEO_PERREO ;
 unsigned int TSI148_LCSR_INTEO_VERREO ;
 int dev_err (int ,char*,int ) ;
 int driver_name ;
 int iowrite32be (unsigned int,scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct vme_bridge*) ;
 struct pci_dev* to_pci_dev (int ) ;
 int tsi148_irqhandler ;

__attribute__((used)) static int tsi148_irq_init(struct vme_bridge *tsi148_bridge)
{
 int result;
 unsigned int tmp;
 struct pci_dev *pdev;
 struct tsi148_driver *bridge;

 pdev = to_pci_dev(tsi148_bridge->parent);

 bridge = tsi148_bridge->driver_priv;

 result = request_irq(pdev->irq,
        tsi148_irqhandler,
        IRQF_SHARED,
        driver_name, tsi148_bridge);
 if (result) {
  dev_err(tsi148_bridge->parent, "Can't get assigned pci irq "
   "vector %02X\n", pdev->irq);
  return result;
 }


 tmp = TSI148_LCSR_INTEO_DMA1EO | TSI148_LCSR_INTEO_DMA0EO |
  TSI148_LCSR_INTEO_MB3EO | TSI148_LCSR_INTEO_MB2EO |
  TSI148_LCSR_INTEO_MB1EO | TSI148_LCSR_INTEO_MB0EO |
  TSI148_LCSR_INTEO_PERREO | TSI148_LCSR_INTEO_VERREO |
  TSI148_LCSR_INTEO_IACKEO;
 iowrite32be(tmp, bridge->base + TSI148_LCSR_INTEO);
 iowrite32be(tmp, bridge->base + TSI148_LCSR_INTEN);

 return 0;
}
