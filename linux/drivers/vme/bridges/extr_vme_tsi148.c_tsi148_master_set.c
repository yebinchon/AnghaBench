
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_master_resource {unsigned int number; int lock; int bus_resource; struct vme_bridge* parent; } ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;
struct pci_dev {int bus; } ;
struct pci_bus_region {unsigned long long start; } ;


 int EINVAL ;
 scalar_t__ TSI148_LCSR_OFFSET_OTAT ;
 scalar_t__ TSI148_LCSR_OFFSET_OTEAL ;
 scalar_t__ TSI148_LCSR_OFFSET_OTEAU ;
 scalar_t__ TSI148_LCSR_OFFSET_OTOFL ;
 scalar_t__ TSI148_LCSR_OFFSET_OTOFU ;
 scalar_t__ TSI148_LCSR_OFFSET_OTSAL ;
 scalar_t__ TSI148_LCSR_OFFSET_OTSAU ;
 scalar_t__* TSI148_LCSR_OT ;
 unsigned int TSI148_LCSR_OTAT_2eSSTM_160 ;
 unsigned int TSI148_LCSR_OTAT_2eSSTM_267 ;
 unsigned int TSI148_LCSR_OTAT_2eSSTM_320 ;
 unsigned int TSI148_LCSR_OTAT_2eSSTM_M ;
 unsigned int TSI148_LCSR_OTAT_AMODE_A16 ;
 unsigned int TSI148_LCSR_OTAT_AMODE_A24 ;
 unsigned int TSI148_LCSR_OTAT_AMODE_A32 ;
 unsigned int TSI148_LCSR_OTAT_AMODE_A64 ;
 unsigned int TSI148_LCSR_OTAT_AMODE_CRCSR ;
 unsigned int TSI148_LCSR_OTAT_AMODE_M ;
 unsigned int TSI148_LCSR_OTAT_AMODE_USER1 ;
 unsigned int TSI148_LCSR_OTAT_AMODE_USER2 ;
 unsigned int TSI148_LCSR_OTAT_AMODE_USER3 ;
 unsigned int TSI148_LCSR_OTAT_AMODE_USER4 ;
 unsigned int TSI148_LCSR_OTAT_DBW_16 ;
 unsigned int TSI148_LCSR_OTAT_DBW_32 ;
 unsigned int TSI148_LCSR_OTAT_DBW_M ;
 unsigned int TSI148_LCSR_OTAT_EN ;
 unsigned int TSI148_LCSR_OTAT_PGM ;
 unsigned int TSI148_LCSR_OTAT_SUP ;
 unsigned int TSI148_LCSR_OTAT_TM_2eSST ;
 unsigned int TSI148_LCSR_OTAT_TM_2eSSTB ;
 unsigned int TSI148_LCSR_OTAT_TM_2eVME ;
 unsigned int TSI148_LCSR_OTAT_TM_BLT ;
 unsigned int TSI148_LCSR_OTAT_TM_M ;
 unsigned int TSI148_LCSR_OTAT_TM_MBLT ;
 int VME_2eSST ;



 int VME_2eSSTB ;
 int VME_2eVME ;




 int VME_BLT ;



 int VME_MBLT ;
 int VME_PROG ;
 int VME_SUPER ;




 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 unsigned int ioread32be (scalar_t__) ;
 int iowrite32be (unsigned int,scalar_t__) ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,int *) ;
 int reg_split (unsigned long long,unsigned int*,unsigned int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct pci_dev* to_pci_dev (int ) ;
 int tsi148_alloc_resource (struct vme_master_resource*,unsigned long long) ;
 int tsi148_free_resource (struct vme_master_resource*) ;

__attribute__((used)) static int tsi148_master_set(struct vme_master_resource *image, int enabled,
 unsigned long long vme_base, unsigned long long size, u32 aspace,
 u32 cycle, u32 dwidth)
{
 int retval = 0;
 unsigned int i;
 unsigned int temp_ctl = 0;
 unsigned int pci_base_low, pci_base_high;
 unsigned int pci_bound_low, pci_bound_high;
 unsigned int vme_offset_low, vme_offset_high;
 unsigned long long pci_bound, vme_offset, pci_base;
 struct vme_bridge *tsi148_bridge;
 struct tsi148_driver *bridge;
 struct pci_bus_region region;
 struct pci_dev *pdev;

 tsi148_bridge = image->parent;

 bridge = tsi148_bridge->driver_priv;

 pdev = to_pci_dev(tsi148_bridge->parent);


 if (vme_base & 0xFFFF) {
  dev_err(tsi148_bridge->parent, "Invalid VME Window "
   "alignment\n");
  retval = -EINVAL;
  goto err_window;
 }

 if ((size == 0) && (enabled != 0)) {
  dev_err(tsi148_bridge->parent, "Size must be non-zero for "
   "enabled windows\n");
  retval = -EINVAL;
  goto err_window;
 }

 spin_lock(&image->lock);





 retval = tsi148_alloc_resource(image, size);
 if (retval) {
  spin_unlock(&image->lock);
  dev_err(tsi148_bridge->parent, "Unable to allocate memory for "
   "resource\n");
  goto err_res;
 }

 if (size == 0) {
  pci_base = 0;
  pci_bound = 0;
  vme_offset = 0;
 } else {
  pcibios_resource_to_bus(pdev->bus, &region,
     &image->bus_resource);
  pci_base = region.start;





  pci_bound = pci_base + (size - 0x10000);
  vme_offset = vme_base - pci_base;
 }


 reg_split(pci_base, &pci_base_high, &pci_base_low);
 reg_split(pci_bound, &pci_bound_high, &pci_bound_low);
 reg_split(vme_offset, &vme_offset_high, &vme_offset_low);

 if (pci_base_low & 0xFFFF) {
  spin_unlock(&image->lock);
  dev_err(tsi148_bridge->parent, "Invalid PCI base alignment\n");
  retval = -EINVAL;
  goto err_gran;
 }
 if (pci_bound_low & 0xFFFF) {
  spin_unlock(&image->lock);
  dev_err(tsi148_bridge->parent, "Invalid PCI bound alignment\n");
  retval = -EINVAL;
  goto err_gran;
 }
 if (vme_offset_low & 0xFFFF) {
  spin_unlock(&image->lock);
  dev_err(tsi148_bridge->parent, "Invalid VME Offset "
   "alignment\n");
  retval = -EINVAL;
  goto err_gran;
 }

 i = image->number;


 temp_ctl = ioread32be(bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTAT);
 temp_ctl &= ~TSI148_LCSR_OTAT_EN;
 iowrite32be(temp_ctl, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTAT);


 temp_ctl &= ~TSI148_LCSR_OTAT_2eSSTM_M;
 switch (cycle & (141 | 140 | 139)) {
 case 141:
  temp_ctl |= TSI148_LCSR_OTAT_2eSSTM_160;
  break;
 case 140:
  temp_ctl |= TSI148_LCSR_OTAT_2eSSTM_267;
  break;
 case 139:
  temp_ctl |= TSI148_LCSR_OTAT_2eSSTM_320;
  break;
 }


 if (cycle & VME_BLT) {
  temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
  temp_ctl |= TSI148_LCSR_OTAT_TM_BLT;
 }
 if (cycle & VME_MBLT) {
  temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
  temp_ctl |= TSI148_LCSR_OTAT_TM_MBLT;
 }
 if (cycle & VME_2eVME) {
  temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
  temp_ctl |= TSI148_LCSR_OTAT_TM_2eVME;
 }
 if (cycle & VME_2eSST) {
  temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
  temp_ctl |= TSI148_LCSR_OTAT_TM_2eSST;
 }
 if (cycle & VME_2eSSTB) {
  dev_warn(tsi148_bridge->parent, "Currently not setting "
   "Broadcast Select Registers\n");
  temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
  temp_ctl |= TSI148_LCSR_OTAT_TM_2eSSTB;
 }


 temp_ctl &= ~TSI148_LCSR_OTAT_DBW_M;
 switch (dwidth) {
 case 133:
  temp_ctl |= TSI148_LCSR_OTAT_DBW_16;
  break;
 case 132:
  temp_ctl |= TSI148_LCSR_OTAT_DBW_32;
  break;
 default:
  spin_unlock(&image->lock);
  dev_err(tsi148_bridge->parent, "Invalid data width\n");
  retval = -EINVAL;
  goto err_dwidth;
 }


 temp_ctl &= ~TSI148_LCSR_OTAT_AMODE_M;
 switch (aspace) {
 case 138:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_A16;
  break;
 case 137:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_A24;
  break;
 case 136:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_A32;
  break;
 case 135:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_A64;
  break;
 case 134:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_CRCSR;
  break;
 case 131:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER1;
  break;
 case 130:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER2;
  break;
 case 129:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER3;
  break;
 case 128:
  temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER4;
  break;
 default:
  spin_unlock(&image->lock);
  dev_err(tsi148_bridge->parent, "Invalid address space\n");
  retval = -EINVAL;
  goto err_aspace;
  break;
 }

 temp_ctl &= ~(3<<4);
 if (cycle & VME_SUPER)
  temp_ctl |= TSI148_LCSR_OTAT_SUP;
 if (cycle & VME_PROG)
  temp_ctl |= TSI148_LCSR_OTAT_PGM;


 iowrite32be(pci_base_high, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTSAU);
 iowrite32be(pci_base_low, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTSAL);
 iowrite32be(pci_bound_high, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTEAU);
 iowrite32be(pci_bound_low, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTEAL);
 iowrite32be(vme_offset_high, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTOFU);
 iowrite32be(vme_offset_low, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTOFL);


 iowrite32be(temp_ctl, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTAT);

 if (enabled)
  temp_ctl |= TSI148_LCSR_OTAT_EN;

 iowrite32be(temp_ctl, bridge->base + TSI148_LCSR_OT[i] +
  TSI148_LCSR_OFFSET_OTAT);

 spin_unlock(&image->lock);
 return 0;

err_aspace:
err_dwidth:
err_gran:
 tsi148_free_resource(image);
err_res:
err_window:
 return retval;

}
