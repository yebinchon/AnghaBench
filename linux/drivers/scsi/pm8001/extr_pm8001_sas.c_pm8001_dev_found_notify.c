
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct pm8001_hba_info {int lock; int flags; } ;
struct pm8001_device {scalar_t__ dev_type; int attached_phy; int * dcompletion; struct domain_device* sas_device; } ;
struct ex_phy {int attached_sas_addr; } ;
struct TYPE_5__ {int num_phys; struct ex_phy* ex_phy; } ;
struct domain_device {scalar_t__ dev_type; TYPE_3__* rphy; int sas_addr; TYPE_1__ ex_dev; struct pm8001_device* lldd_dev; struct domain_device* parent; } ;
struct TYPE_8__ {int (* reg_dev_req ) (struct pm8001_hba_info*,struct pm8001_device*,int) ;} ;
struct TYPE_6__ {int phy_identifier; } ;
struct TYPE_7__ {TYPE_2__ identify; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int PM8001F_RUN_TIME ;
 TYPE_4__* PM8001_CHIP_DISP ;
 int PM8001_DISC_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 scalar_t__ SAS_ADDR (int ) ;
 scalar_t__ SAS_END_DEVICE ;
 scalar_t__ SAS_SATA_DEV ;
 int completion ;
 scalar_t__ dev_is_expander (scalar_t__) ;
 int msleep (int) ;
 struct pm8001_device* pm8001_alloc_dev (struct pm8001_hba_info*) ;
 struct pm8001_hba_info* pm8001_find_ha_by_dev (struct domain_device*) ;
 int pm8001_printk (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pm8001_hba_info*,struct pm8001_device*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int pm8001_dev_found_notify(struct domain_device *dev)
{
 unsigned long flags = 0;
 int res = 0;
 struct pm8001_hba_info *pm8001_ha = ((void*)0);
 struct domain_device *parent_dev = dev->parent;
 struct pm8001_device *pm8001_device;
 DECLARE_COMPLETION_ONSTACK(completion);
 u32 flag = 0;
 pm8001_ha = pm8001_find_ha_by_dev(dev);
 spin_lock_irqsave(&pm8001_ha->lock, flags);

 pm8001_device = pm8001_alloc_dev(pm8001_ha);
 if (!pm8001_device) {
  res = -1;
  goto found_out;
 }
 pm8001_device->sas_device = dev;
 dev->lldd_dev = pm8001_device;
 pm8001_device->dev_type = dev->dev_type;
 pm8001_device->dcompletion = &completion;
 if (parent_dev && dev_is_expander(parent_dev->dev_type)) {
  int phy_id;
  struct ex_phy *phy;
  for (phy_id = 0; phy_id < parent_dev->ex_dev.num_phys;
  phy_id++) {
   phy = &parent_dev->ex_dev.ex_phy[phy_id];
   if (SAS_ADDR(phy->attached_sas_addr)
    == SAS_ADDR(dev->sas_addr)) {
    pm8001_device->attached_phy = phy_id;
    break;
   }
  }
  if (phy_id == parent_dev->ex_dev.num_phys) {
   PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Error: no attached dev:%016llx"
   " at ex:%016llx.\n", SAS_ADDR(dev->sas_addr),
    SAS_ADDR(parent_dev->sas_addr)));
   res = -1;
  }
 } else {
  if (dev->dev_type == SAS_SATA_DEV) {
   pm8001_device->attached_phy =
    dev->rphy->identify.phy_identifier;
   flag = 1;
  }
 }
 PM8001_DISC_DBG(pm8001_ha, pm8001_printk("Found device\n"));
 PM8001_CHIP_DISP->reg_dev_req(pm8001_ha, pm8001_device, flag);
 spin_unlock_irqrestore(&pm8001_ha->lock, flags);
 wait_for_completion(&completion);
 if (dev->dev_type == SAS_END_DEVICE)
  msleep(50);
 pm8001_ha->flags = PM8001F_RUN_TIME;
 return 0;
found_out:
 spin_unlock_irqrestore(&pm8001_ha->lock, flags);
 return res;
}
