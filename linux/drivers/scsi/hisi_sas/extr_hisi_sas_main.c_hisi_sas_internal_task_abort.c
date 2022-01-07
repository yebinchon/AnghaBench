
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_slot {size_t dlvry_queue; } ;
struct hisi_sas_dq {int dummy; } ;
struct hisi_sas_cq {struct cpumask* pci_irq_mask; } ;
struct hisi_hba {int cq_nvecs; struct hisi_sas_dq* dq; struct hisi_sas_cq* cq; struct hisi_sas_slot* slot_info; struct device* dev; } ;
struct domain_device {int dummy; } ;
struct device {int dummy; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;


 int _hisi_sas_internal_task_abort (struct hisi_hba*,struct domain_device*,int,int,struct hisi_sas_dq*) ;
 int cpu_online_mask ;
 int cpumask_intersects (int ,struct cpumask const*) ;
 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int
hisi_sas_internal_task_abort(struct hisi_hba *hisi_hba,
        struct domain_device *device,
        int abort_flag, int tag)
{
 struct hisi_sas_slot *slot;
 struct device *dev = hisi_hba->dev;
 struct hisi_sas_dq *dq;
 int i, rc;

 switch (abort_flag) {
 case 129:
  slot = &hisi_hba->slot_info[tag];
  dq = &hisi_hba->dq[slot->dlvry_queue];
  return _hisi_sas_internal_task_abort(hisi_hba, device,
           abort_flag, tag, dq);
 case 128:
  for (i = 0; i < hisi_hba->cq_nvecs; i++) {
   struct hisi_sas_cq *cq = &hisi_hba->cq[i];
   const struct cpumask *mask = cq->pci_irq_mask;

   if (mask && !cpumask_intersects(cpu_online_mask, mask))
    continue;
   dq = &hisi_hba->dq[i];
   rc = _hisi_sas_internal_task_abort(hisi_hba, device,
          abort_flag, tag,
          dq);
   if (rc)
    return rc;
  }
  break;
 default:
  dev_err(dev, "Unrecognised internal abort flag (%d)\n",
   abort_flag);
  return -EINVAL;
 }

 return 0;
}
