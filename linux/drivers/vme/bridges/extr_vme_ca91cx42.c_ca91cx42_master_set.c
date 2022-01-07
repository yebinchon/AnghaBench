
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ start; } ;
struct vme_master_resource {unsigned int number; int lock; TYPE_1__ bus_resource; struct vme_bridge* parent; } ;
struct vme_bridge {int parent; struct ca91cx42_driver* driver_priv; } ;
struct ca91cx42_driver {scalar_t__ base; } ;


 scalar_t__* CA91CX42_LSI_BD ;
 scalar_t__* CA91CX42_LSI_BS ;
 scalar_t__* CA91CX42_LSI_CTL ;
 unsigned int CA91CX42_LSI_CTL_EN ;
 unsigned int CA91CX42_LSI_CTL_PGM_M ;
 unsigned int CA91CX42_LSI_CTL_PGM_PGM ;
 unsigned int CA91CX42_LSI_CTL_SUPER_M ;
 unsigned int CA91CX42_LSI_CTL_SUPER_SUPR ;
 unsigned int CA91CX42_LSI_CTL_VAS_A16 ;
 unsigned int CA91CX42_LSI_CTL_VAS_A24 ;
 unsigned int CA91CX42_LSI_CTL_VAS_A32 ;
 unsigned int CA91CX42_LSI_CTL_VAS_CRCSR ;
 unsigned int CA91CX42_LSI_CTL_VAS_M ;
 unsigned int CA91CX42_LSI_CTL_VAS_USER1 ;
 unsigned int CA91CX42_LSI_CTL_VAS_USER2 ;
 unsigned int CA91CX42_LSI_CTL_VCT_BLT ;
 unsigned int CA91CX42_LSI_CTL_VCT_M ;
 unsigned int CA91CX42_LSI_CTL_VCT_MBLT ;
 unsigned int CA91CX42_LSI_CTL_VDW_D16 ;
 unsigned int CA91CX42_LSI_CTL_VDW_D32 ;
 unsigned int CA91CX42_LSI_CTL_VDW_D64 ;
 unsigned int CA91CX42_LSI_CTL_VDW_D8 ;
 unsigned int CA91CX42_LSI_CTL_VDW_M ;
 scalar_t__* CA91CX42_LSI_TO ;
 int EINVAL ;
 int ENOMEM ;




 int VME_BLT ;





 int VME_MBLT ;
 int VME_PROG ;
 int VME_SUPER ;




 int ca91cx42_alloc_resource (struct vme_master_resource*,unsigned long long) ;
 int ca91cx42_free_resource (struct vme_master_resource*) ;
 int dev_err (int ,char*) ;
 unsigned int ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ca91cx42_master_set(struct vme_master_resource *image, int enabled,
 unsigned long long vme_base, unsigned long long size, u32 aspace,
 u32 cycle, u32 dwidth)
{
 int retval = 0;
 unsigned int i, granularity = 0;
 unsigned int temp_ctl = 0;
 unsigned long long pci_bound, vme_offset, pci_base;
 struct vme_bridge *ca91cx42_bridge;
 struct ca91cx42_driver *bridge;

 ca91cx42_bridge = image->parent;

 bridge = ca91cx42_bridge->driver_priv;

 i = image->number;

 if ((i == 0) || (i == 4))
  granularity = 0x1000;
 else
  granularity = 0x10000;


 if (vme_base & (granularity - 1)) {
  dev_err(ca91cx42_bridge->parent, "Invalid VME Window "
   "alignment\n");
  retval = -EINVAL;
  goto err_window;
 }
 if (size & (granularity - 1)) {
  dev_err(ca91cx42_bridge->parent, "Invalid VME Window "
   "alignment\n");
  retval = -EINVAL;
  goto err_window;
 }

 spin_lock(&image->lock);





 retval = ca91cx42_alloc_resource(image, size);
 if (retval) {
  spin_unlock(&image->lock);
  dev_err(ca91cx42_bridge->parent, "Unable to allocate memory "
   "for resource name\n");
  retval = -ENOMEM;
  goto err_res;
 }

 pci_base = (unsigned long long)image->bus_resource.start;





 pci_bound = pci_base + size;
 vme_offset = vme_base - pci_base;


 temp_ctl = ioread32(bridge->base + CA91CX42_LSI_CTL[i]);
 temp_ctl &= ~CA91CX42_LSI_CTL_EN;
 iowrite32(temp_ctl, bridge->base + CA91CX42_LSI_CTL[i]);


 temp_ctl &= ~CA91CX42_LSI_CTL_VCT_M;
 if (cycle & VME_BLT)
  temp_ctl |= CA91CX42_LSI_CTL_VCT_BLT;
 if (cycle & VME_MBLT)
  temp_ctl |= CA91CX42_LSI_CTL_VCT_MBLT;


 temp_ctl &= ~CA91CX42_LSI_CTL_VDW_M;
 switch (dwidth) {
 case 132:
  temp_ctl |= CA91CX42_LSI_CTL_VDW_D8;
  break;
 case 135:
  temp_ctl |= CA91CX42_LSI_CTL_VDW_D16;
  break;
 case 134:
  temp_ctl |= CA91CX42_LSI_CTL_VDW_D32;
  break;
 case 133:
  temp_ctl |= CA91CX42_LSI_CTL_VDW_D64;
  break;
 default:
  spin_unlock(&image->lock);
  dev_err(ca91cx42_bridge->parent, "Invalid data width\n");
  retval = -EINVAL;
  goto err_dwidth;
  break;
 }


 temp_ctl &= ~CA91CX42_LSI_CTL_VAS_M;
 switch (aspace) {
 case 140:
  temp_ctl |= CA91CX42_LSI_CTL_VAS_A16;
  break;
 case 139:
  temp_ctl |= CA91CX42_LSI_CTL_VAS_A24;
  break;
 case 138:
  temp_ctl |= CA91CX42_LSI_CTL_VAS_A32;
  break;
 case 136:
  temp_ctl |= CA91CX42_LSI_CTL_VAS_CRCSR;
  break;
 case 131:
  temp_ctl |= CA91CX42_LSI_CTL_VAS_USER1;
  break;
 case 130:
  temp_ctl |= CA91CX42_LSI_CTL_VAS_USER2;
  break;
 case 137:
 case 129:
 case 128:
 default:
  spin_unlock(&image->lock);
  dev_err(ca91cx42_bridge->parent, "Invalid address space\n");
  retval = -EINVAL;
  goto err_aspace;
  break;
 }

 temp_ctl &= ~(CA91CX42_LSI_CTL_PGM_M | CA91CX42_LSI_CTL_SUPER_M);
 if (cycle & VME_SUPER)
  temp_ctl |= CA91CX42_LSI_CTL_SUPER_SUPR;
 if (cycle & VME_PROG)
  temp_ctl |= CA91CX42_LSI_CTL_PGM_PGM;


 iowrite32(pci_base, bridge->base + CA91CX42_LSI_BS[i]);
 iowrite32(pci_bound, bridge->base + CA91CX42_LSI_BD[i]);
 iowrite32(vme_offset, bridge->base + CA91CX42_LSI_TO[i]);


 iowrite32(temp_ctl, bridge->base + CA91CX42_LSI_CTL[i]);

 if (enabled)
  temp_ctl |= CA91CX42_LSI_CTL_EN;

 iowrite32(temp_ctl, bridge->base + CA91CX42_LSI_CTL[i]);

 spin_unlock(&image->lock);
 return 0;

err_aspace:
err_dwidth:
 ca91cx42_free_resource(image);
err_res:
err_window:
 return retval;
}
