
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {int crcsr_bus; int crcsr_kernel; scalar_t__ base; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ TSI148_LCSR_CRAT ;
 int TSI148_LCSR_CRAT_EN ;
 scalar_t__ TSI148_LCSR_CROL ;
 scalar_t__ TSI148_LCSR_CROU ;
 int VME_CRCSR_BUF_SIZE ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void tsi148_crcsr_exit(struct vme_bridge *tsi148_bridge,
 struct pci_dev *pdev)
{
 u32 crat;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;


 crat = ioread32be(bridge->base + TSI148_LCSR_CRAT);
 iowrite32be(crat & ~TSI148_LCSR_CRAT_EN,
  bridge->base + TSI148_LCSR_CRAT);


 iowrite32be(0, bridge->base + TSI148_LCSR_CROU);
 iowrite32be(0, bridge->base + TSI148_LCSR_CROL);

 pci_free_consistent(pdev, VME_CRCSR_BUF_SIZE, bridge->crcsr_kernel,
  bridge->crcsr_bus);
}
