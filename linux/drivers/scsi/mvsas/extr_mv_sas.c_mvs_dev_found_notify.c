
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mvs_info {int lock; } ;
struct mvs_device {int attached_phy; struct domain_device* sas_device; struct mvs_info* mvi_info; int dev_type; int dev_status; } ;
struct ex_phy {int attached_sas_addr; } ;
struct TYPE_2__ {int num_phys; struct ex_phy* ex_phy; } ;
struct domain_device {int sas_addr; TYPE_1__ ex_dev; int dev_type; struct mvs_device* lldd_dev; struct domain_device* parent; } ;


 int MVS_DEV_NORMAL ;
 scalar_t__ SAS_ADDR (int ) ;
 scalar_t__ dev_is_expander (int ) ;
 int mv_printk (char*,scalar_t__,scalar_t__) ;
 struct mvs_device* mvs_alloc_dev (struct mvs_info*) ;
 struct mvs_info* mvs_find_dev_mvi (struct domain_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mvs_dev_found_notify(struct domain_device *dev, int lock)
{
 unsigned long flags = 0;
 int res = 0;
 struct mvs_info *mvi = ((void*)0);
 struct domain_device *parent_dev = dev->parent;
 struct mvs_device *mvi_device;

 mvi = mvs_find_dev_mvi(dev);

 if (lock)
  spin_lock_irqsave(&mvi->lock, flags);

 mvi_device = mvs_alloc_dev(mvi);
 if (!mvi_device) {
  res = -1;
  goto found_out;
 }
 dev->lldd_dev = mvi_device;
 mvi_device->dev_status = MVS_DEV_NORMAL;
 mvi_device->dev_type = dev->dev_type;
 mvi_device->mvi_info = mvi;
 mvi_device->sas_device = dev;
 if (parent_dev && dev_is_expander(parent_dev->dev_type)) {
  int phy_id;
  u8 phy_num = parent_dev->ex_dev.num_phys;
  struct ex_phy *phy;
  for (phy_id = 0; phy_id < phy_num; phy_id++) {
   phy = &parent_dev->ex_dev.ex_phy[phy_id];
   if (SAS_ADDR(phy->attached_sas_addr) ==
    SAS_ADDR(dev->sas_addr)) {
    mvi_device->attached_phy = phy_id;
    break;
   }
  }

  if (phy_id == phy_num) {
   mv_printk("Error: no attached dev:%016llx"
    "at ex:%016llx.\n",
    SAS_ADDR(dev->sas_addr),
    SAS_ADDR(parent_dev->sas_addr));
   res = -1;
  }
 }

found_out:
 if (lock)
  spin_unlock_irqrestore(&mvi->lock, flags);
 return res;
}
