
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {int msi_enabled; } ;
struct TYPE_2__ {int ODR_R; int ODR_MSI; } ;


 TYPE_1__ MUnit ;
 int SRC_MSI_READ_MASK ;
 int SRC_ODR_SHIFT ;
 int src_readl (struct aac_dev*,int ) ;

__attribute__((used)) static int aac_src_get_sync_status(struct aac_dev *dev)
{
 int msix_val = 0;
 int legacy_val = 0;

 msix_val = src_readl(dev, MUnit.ODR_MSI) & SRC_MSI_READ_MASK ? 1 : 0;

 if (!dev->msi_enabled) {






  legacy_val = src_readl(dev, MUnit.ODR_R) >> SRC_ODR_SHIFT;
  if (!(legacy_val & 1) && msix_val)
   dev->msi_enabled = 1;
  return legacy_val;
 }

 return msix_val;
}
