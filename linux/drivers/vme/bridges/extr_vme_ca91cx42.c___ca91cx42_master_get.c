
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vme_master_resource {unsigned int number; TYPE_1__* parent; } ;
struct ca91cx42_driver {scalar_t__ base; } ;
struct TYPE_2__ {struct ca91cx42_driver* driver_priv; } ;


 scalar_t__* CA91CX42_LSI_BD ;
 scalar_t__* CA91CX42_LSI_BS ;
 scalar_t__* CA91CX42_LSI_CTL ;
 unsigned int CA91CX42_LSI_CTL_EN ;
 unsigned int CA91CX42_LSI_CTL_PGM_PGM ;
 unsigned int CA91CX42_LSI_CTL_SUPER_SUPR ;




 unsigned int CA91CX42_LSI_CTL_VAS_M ;


 unsigned int CA91CX42_LSI_CTL_VCT_BLT ;




 unsigned int CA91CX42_LSI_CTL_VDW_M ;
 scalar_t__* CA91CX42_LSI_TO ;
 scalar_t__ VME_A16 ;
 scalar_t__ VME_A24 ;
 scalar_t__ VME_A32 ;
 scalar_t__ VME_BLT ;
 scalar_t__ VME_CRCSR ;
 scalar_t__ VME_D16 ;
 scalar_t__ VME_D32 ;
 scalar_t__ VME_D64 ;
 scalar_t__ VME_D8 ;
 scalar_t__ VME_DATA ;
 scalar_t__ VME_PROG ;
 scalar_t__ VME_SCT ;
 scalar_t__ VME_SUPER ;
 scalar_t__ VME_USER ;
 scalar_t__ VME_USER1 ;
 scalar_t__ VME_USER2 ;
 void* ioread32 (scalar_t__) ;

__attribute__((used)) static int __ca91cx42_master_get(struct vme_master_resource *image,
 int *enabled, unsigned long long *vme_base, unsigned long long *size,
 u32 *aspace, u32 *cycle, u32 *dwidth)
{
 unsigned int i, ctl;
 unsigned long long pci_base, pci_bound, vme_offset;
 struct ca91cx42_driver *bridge;

 bridge = image->parent->driver_priv;

 i = image->number;

 ctl = ioread32(bridge->base + CA91CX42_LSI_CTL[i]);

 pci_base = ioread32(bridge->base + CA91CX42_LSI_BS[i]);
 vme_offset = ioread32(bridge->base + CA91CX42_LSI_TO[i]);
 pci_bound = ioread32(bridge->base + CA91CX42_LSI_BD[i]);

 *vme_base = pci_base + vme_offset;
 *size = (unsigned long long)(pci_bound - pci_base);

 *enabled = 0;
 *aspace = 0;
 *cycle = 0;
 *dwidth = 0;

 if (ctl & CA91CX42_LSI_CTL_EN)
  *enabled = 1;


 switch (ctl & CA91CX42_LSI_CTL_VAS_M) {
 case 137:
  *aspace = VME_A16;
  break;
 case 136:
  *aspace = VME_A24;
  break;
 case 135:
  *aspace = VME_A32;
  break;
 case 134:
  *aspace = VME_CRCSR;
  break;
 case 133:
  *aspace = VME_USER1;
  break;
 case 132:
  *aspace = VME_USER2;
  break;
 }



 if (ctl & CA91CX42_LSI_CTL_VCT_BLT)
  *cycle |= VME_BLT;
 else
  *cycle |= VME_SCT;

 if (ctl & CA91CX42_LSI_CTL_SUPER_SUPR)
  *cycle |= VME_SUPER;
 else
  *cycle |= VME_USER;

 if (ctl & CA91CX42_LSI_CTL_PGM_PGM)
  *cycle = VME_PROG;
 else
  *cycle = VME_DATA;


 switch (ctl & CA91CX42_LSI_CTL_VDW_M) {
 case 128:
  *dwidth = VME_D8;
  break;
 case 131:
  *dwidth = VME_D16;
  break;
 case 130:
  *dwidth = VME_D32;
  break;
 case 129:
  *dwidth = VME_D64;
  break;
 }

 return 0;
}
