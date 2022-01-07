
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_sas_device {int * sas_device; int dev_type; int device_id; } ;
struct hisi_hba {int sem; TYPE_1__* hw; int flags; struct device* dev; } ;
struct domain_device {struct hisi_sas_device* lldd_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* free_device ) (struct hisi_sas_device*) ;int (* clear_itct ) (struct hisi_hba*,struct hisi_sas_device*) ;} ;


 int HISI_SAS_INT_ABT_DEV ;
 int HISI_SAS_RESET_BIT ;
 int SAS_PHY_UNUSED ;
 int dev_info (struct device*,char*,int ,int ) ;
 struct hisi_hba* dev_to_hisi_hba (struct domain_device*) ;
 int down (int *) ;
 int hisi_sas_dereg_device (struct hisi_hba*,struct domain_device*) ;
 int hisi_sas_internal_task_abort (struct hisi_hba*,struct domain_device*,int ,int ) ;
 int stub1 (struct hisi_hba*,struct hisi_sas_device*) ;
 int stub2 (struct hisi_sas_device*) ;
 int test_bit (int ,int *) ;
 int up (int *) ;

__attribute__((used)) static void hisi_sas_dev_gone(struct domain_device *device)
{
 struct hisi_sas_device *sas_dev = device->lldd_dev;
 struct hisi_hba *hisi_hba = dev_to_hisi_hba(device);
 struct device *dev = hisi_hba->dev;

 dev_info(dev, "dev[%d:%x] is gone\n",
   sas_dev->device_id, sas_dev->dev_type);

 down(&hisi_hba->sem);
 if (!test_bit(HISI_SAS_RESET_BIT, &hisi_hba->flags)) {
  hisi_sas_internal_task_abort(hisi_hba, device,
          HISI_SAS_INT_ABT_DEV, 0);

  hisi_sas_dereg_device(hisi_hba, device);

  hisi_hba->hw->clear_itct(hisi_hba, sas_dev);
  device->lldd_dev = ((void*)0);
 }

 if (hisi_hba->hw->free_device)
  hisi_hba->hw->free_device(sas_dev);
 sas_dev->dev_type = SAS_PHY_UNUSED;
 sas_dev->sas_device = ((void*)0);
 up(&hisi_hba->sem);
}
