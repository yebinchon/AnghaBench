
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_slave_resource {unsigned int number; struct vme_bridge* parent; } ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;
typedef scalar_t__ dma_addr_t ;


 int EINVAL ;
 scalar_t__* TSI148_LCSR_IT ;
 unsigned int TSI148_LCSR_ITAT_2eSST ;
 unsigned int TSI148_LCSR_ITAT_2eSSTB ;
 unsigned int TSI148_LCSR_ITAT_2eSSTM_160 ;
 unsigned int TSI148_LCSR_ITAT_2eSSTM_267 ;
 unsigned int TSI148_LCSR_ITAT_2eSSTM_320 ;
 unsigned int TSI148_LCSR_ITAT_2eSSTM_M ;
 unsigned int TSI148_LCSR_ITAT_2eVME ;
 unsigned int TSI148_LCSR_ITAT_AS_A16 ;
 unsigned int TSI148_LCSR_ITAT_AS_A24 ;
 unsigned int TSI148_LCSR_ITAT_AS_A32 ;
 unsigned int TSI148_LCSR_ITAT_AS_A64 ;
 unsigned int TSI148_LCSR_ITAT_AS_M ;
 unsigned int TSI148_LCSR_ITAT_BLT ;
 unsigned int TSI148_LCSR_ITAT_DATA ;
 unsigned int TSI148_LCSR_ITAT_EN ;
 unsigned int TSI148_LCSR_ITAT_MBLT ;
 unsigned int TSI148_LCSR_ITAT_NPRIV ;
 unsigned int TSI148_LCSR_ITAT_PGM ;
 unsigned int TSI148_LCSR_ITAT_SUPR ;
 scalar_t__ TSI148_LCSR_OFFSET_ITAT ;
 scalar_t__ TSI148_LCSR_OFFSET_ITEAL ;
 scalar_t__ TSI148_LCSR_OFFSET_ITEAU ;
 scalar_t__ TSI148_LCSR_OFFSET_ITOFL ;
 scalar_t__ TSI148_LCSR_OFFSET_ITOFU ;
 scalar_t__ TSI148_LCSR_OFFSET_ITSAL ;
 scalar_t__ TSI148_LCSR_OFFSET_ITSAU ;
 int VME_2eSST ;



 int VME_2eSSTB ;
 int VME_2eVME ;




 int VME_BLT ;
 int VME_DATA ;
 int VME_MBLT ;
 int VME_PROG ;
 int VME_SUPER ;
 int VME_USER ;
 int dev_err (int ,char*) ;
 unsigned int ioread32be (scalar_t__) ;
 int iowrite32be (unsigned int,scalar_t__) ;
 int reg_split (unsigned long long,unsigned int*,unsigned int*) ;

__attribute__((used)) static int tsi148_slave_set(struct vme_slave_resource *image, int enabled,
 unsigned long long vme_base, unsigned long long size,
 dma_addr_t pci_base, u32 aspace, u32 cycle)
{
 unsigned int i, addr = 0, granularity = 0;
 unsigned int temp_ctl = 0;
 unsigned int vme_base_low, vme_base_high;
 unsigned int vme_bound_low, vme_bound_high;
 unsigned int pci_offset_low, pci_offset_high;
 unsigned long long vme_bound, pci_offset;
 struct vme_bridge *tsi148_bridge;
 struct tsi148_driver *bridge;

 tsi148_bridge = image->parent;
 bridge = tsi148_bridge->driver_priv;

 i = image->number;

 switch (aspace) {
 case 131:
  granularity = 0x10;
  addr |= TSI148_LCSR_ITAT_AS_A16;
  break;
 case 130:
  granularity = 0x1000;
  addr |= TSI148_LCSR_ITAT_AS_A24;
  break;
 case 129:
  granularity = 0x10000;
  addr |= TSI148_LCSR_ITAT_AS_A32;
  break;
 case 128:
  granularity = 0x10000;
  addr |= TSI148_LCSR_ITAT_AS_A64;
  break;
 default:
  dev_err(tsi148_bridge->parent, "Invalid address space\n");
  return -EINVAL;
  break;
 }


 reg_split(vme_base, &vme_base_high, &vme_base_low);





 vme_bound = vme_base + size - granularity;
 reg_split(vme_bound, &vme_bound_high, &vme_bound_low);
 pci_offset = (unsigned long long)pci_base - vme_base;
 reg_split(pci_offset, &pci_offset_high, &pci_offset_low);

 if (vme_base_low & (granularity - 1)) {
  dev_err(tsi148_bridge->parent, "Invalid VME base alignment\n");
  return -EINVAL;
 }
 if (vme_bound_low & (granularity - 1)) {
  dev_err(tsi148_bridge->parent, "Invalid VME bound alignment\n");
  return -EINVAL;
 }
 if (pci_offset_low & (granularity - 1)) {
  dev_err(tsi148_bridge->parent, "Invalid PCI Offset "
   "alignment\n");
  return -EINVAL;
 }


 temp_ctl = ioread32be(bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITAT);
 temp_ctl &= ~TSI148_LCSR_ITAT_EN;
 iowrite32be(temp_ctl, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITAT);


 iowrite32be(vme_base_high, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITSAU);
 iowrite32be(vme_base_low, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITSAL);
 iowrite32be(vme_bound_high, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITEAU);
 iowrite32be(vme_bound_low, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITEAL);
 iowrite32be(pci_offset_high, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITOFU);
 iowrite32be(pci_offset_low, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITOFL);


 temp_ctl &= ~TSI148_LCSR_ITAT_2eSSTM_M;
 switch (cycle & (134 | 133 | 132)) {
 case 134:
  temp_ctl |= TSI148_LCSR_ITAT_2eSSTM_160;
  break;
 case 133:
  temp_ctl |= TSI148_LCSR_ITAT_2eSSTM_267;
  break;
 case 132:
  temp_ctl |= TSI148_LCSR_ITAT_2eSSTM_320;
  break;
 }


 temp_ctl &= ~(0x1F << 7);
 if (cycle & VME_BLT)
  temp_ctl |= TSI148_LCSR_ITAT_BLT;
 if (cycle & VME_MBLT)
  temp_ctl |= TSI148_LCSR_ITAT_MBLT;
 if (cycle & VME_2eVME)
  temp_ctl |= TSI148_LCSR_ITAT_2eVME;
 if (cycle & VME_2eSST)
  temp_ctl |= TSI148_LCSR_ITAT_2eSST;
 if (cycle & VME_2eSSTB)
  temp_ctl |= TSI148_LCSR_ITAT_2eSSTB;


 temp_ctl &= ~TSI148_LCSR_ITAT_AS_M;
 temp_ctl |= addr;

 temp_ctl &= ~0xF;
 if (cycle & VME_SUPER)
  temp_ctl |= TSI148_LCSR_ITAT_SUPR ;
 if (cycle & VME_USER)
  temp_ctl |= TSI148_LCSR_ITAT_NPRIV;
 if (cycle & VME_PROG)
  temp_ctl |= TSI148_LCSR_ITAT_PGM;
 if (cycle & VME_DATA)
  temp_ctl |= TSI148_LCSR_ITAT_DATA;


 iowrite32be(temp_ctl, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITAT);

 if (enabled)
  temp_ctl |= TSI148_LCSR_ITAT_EN;

 iowrite32be(temp_ctl, bridge->base + TSI148_LCSR_IT[i] +
  TSI148_LCSR_OFFSET_ITAT);

 return 0;
}
