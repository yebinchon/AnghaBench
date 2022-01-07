
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct vme_master_resource {int number; int lock; scalar_t__ kern_base; TYPE_1__* parent; } ;
struct tsi148_driver {int vme_rmw; scalar_t__ base; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct tsi148_driver* driver_priv; } ;


 scalar_t__ TSI148_LCSR_OFFSET_OTSAL ;
 scalar_t__ TSI148_LCSR_OFFSET_OTSAU ;
 scalar_t__* TSI148_LCSR_OT ;
 scalar_t__ TSI148_LCSR_RMWAL ;
 scalar_t__ TSI148_LCSR_RMWAU ;
 scalar_t__ TSI148_LCSR_RMWC ;
 scalar_t__ TSI148_LCSR_RMWEN ;
 scalar_t__ TSI148_LCSR_RMWS ;
 scalar_t__ TSI148_LCSR_VMCTRL ;
 unsigned int TSI148_LCSR_VMCTRL_RMWEN ;
 unsigned int ioread32be (scalar_t__) ;
 int iowrite32be (unsigned int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_join (unsigned int,unsigned int,unsigned long long*) ;
 int reg_split (scalar_t__,unsigned int*,unsigned int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned int tsi148_master_rmw(struct vme_master_resource *image,
 unsigned int mask, unsigned int compare, unsigned int swap,
 loff_t offset)
{
 unsigned long long pci_addr;
 unsigned int pci_addr_high, pci_addr_low;
 u32 tmp, result;
 int i;
 struct tsi148_driver *bridge;

 bridge = image->parent->driver_priv;


 i = image->number;


 mutex_lock(&bridge->vme_rmw);


 spin_lock(&image->lock);

 pci_addr_high = ioread32be(bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTSAU);
 pci_addr_low = ioread32be(bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTSAL);

 reg_join(pci_addr_high, pci_addr_low, &pci_addr);
 reg_split(pci_addr + offset, &pci_addr_high, &pci_addr_low);


 iowrite32be(mask, bridge->base + TSI148_LCSR_RMWEN);
 iowrite32be(compare, bridge->base + TSI148_LCSR_RMWC);
 iowrite32be(swap, bridge->base + TSI148_LCSR_RMWS);
 iowrite32be(pci_addr_high, bridge->base + TSI148_LCSR_RMWAU);
 iowrite32be(pci_addr_low, bridge->base + TSI148_LCSR_RMWAL);


 tmp = ioread32be(bridge->base + TSI148_LCSR_VMCTRL);
 tmp |= TSI148_LCSR_VMCTRL_RMWEN;
 iowrite32be(tmp, bridge->base + TSI148_LCSR_VMCTRL);


 result = ioread32be(image->kern_base + offset);


 tmp = ioread32be(bridge->base + TSI148_LCSR_VMCTRL);
 tmp &= ~TSI148_LCSR_VMCTRL_RMWEN;
 iowrite32be(tmp, bridge->base + TSI148_LCSR_VMCTRL);

 spin_unlock(&image->lock);

 mutex_unlock(&bridge->vme_rmw);

 return result;
}
