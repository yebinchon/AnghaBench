
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {struct hisi_hba* lldd_ha; } ;
struct hisi_sas_device {scalar_t__ dev_type; int device_id; struct domain_device* sas_device; } ;
struct hisi_hba {struct hisi_sas_device* devices; int wq; struct device* dev; } ;
struct domain_device {int dev_type; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int done; int completion; int work; } ;


 int HISI_SAS_DECLARE_RST_WORK_ON_STACK (TYPE_1__) ;
 int HISI_SAS_MAX_DEVICES ;
 scalar_t__ SAS_PHY_UNUSED ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_FAILED ;
 int dev_info (struct device*,char*,int ,int) ;
 scalar_t__ dev_is_expander (int ) ;
 int hisi_sas_debug_I_T_nexus_reset (struct domain_device*) ;
 int hisi_sas_release_tasks (struct hisi_hba*) ;
 int queue_work (int ,int *) ;
 TYPE_1__ r ;
 int wait_for_completion (int ) ;

__attribute__((used)) static int hisi_sas_clear_nexus_ha(struct sas_ha_struct *sas_ha)
{
 struct hisi_hba *hisi_hba = sas_ha->lldd_ha;
 struct device *dev = hisi_hba->dev;
 HISI_SAS_DECLARE_RST_WORK_ON_STACK(r);
 int rc, i;

 queue_work(hisi_hba->wq, &r.work);
 wait_for_completion(r.completion);
 if (!r.done)
  return TMF_RESP_FUNC_FAILED;

 for (i = 0; i < HISI_SAS_MAX_DEVICES; i++) {
  struct hisi_sas_device *sas_dev = &hisi_hba->devices[i];
  struct domain_device *device = sas_dev->sas_device;

  if ((sas_dev->dev_type == SAS_PHY_UNUSED) || !device ||
      dev_is_expander(device->dev_type))
   continue;

  rc = hisi_sas_debug_I_T_nexus_reset(device);
  if (rc != TMF_RESP_FUNC_COMPLETE)
   dev_info(dev, "clear nexus ha: for device[%d] rc=%d\n",
     sas_dev->device_id, rc);
 }

 hisi_sas_release_tasks(hisi_hba);

 return TMF_RESP_FUNC_COMPLETE;
}
