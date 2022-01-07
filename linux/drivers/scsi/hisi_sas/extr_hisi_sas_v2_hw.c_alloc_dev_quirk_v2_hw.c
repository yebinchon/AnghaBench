
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_sas_dq {int dummy; } ;
struct hisi_sas_device {scalar_t__ dev_type; int device_id; int sata_idx; int list; int lock; struct hisi_sas_dq* dq; struct domain_device* sas_device; struct hisi_hba* hisi_hba; int dev_status; } ;
struct hisi_hba {int queue_count; int lock; struct hisi_sas_device* devices; struct hisi_sas_dq* dq; } ;
struct domain_device {scalar_t__ dev_type; TYPE_2__* port; } ;
struct TYPE_4__ {TYPE_1__* ha; } ;
struct TYPE_3__ {struct hisi_hba* lldd_ha; } ;


 int HISI_SAS_DEV_INIT ;
 int HISI_SAS_MAX_DEVICES ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ SAS_PHY_UNUSED ;
 int dev_is_sata (struct domain_device*) ;
 int sata_index_alloc_v2_hw (struct hisi_hba*,int*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct
hisi_sas_device *alloc_dev_quirk_v2_hw(struct domain_device *device)
{
 struct hisi_hba *hisi_hba = device->port->ha->lldd_ha;
 struct hisi_sas_device *sas_dev = ((void*)0);
 int i, sata_dev = dev_is_sata(device);
 int sata_idx = -1;
 unsigned long flags;

 spin_lock_irqsave(&hisi_hba->lock, flags);

 if (sata_dev)
  if (!sata_index_alloc_v2_hw(hisi_hba, &sata_idx))
   goto out;

 for (i = 0; i < HISI_SAS_MAX_DEVICES; i++) {



  if (sata_dev && (i & 1))
   continue;
  if (hisi_hba->devices[i].dev_type == SAS_PHY_UNUSED) {
   int queue = i % hisi_hba->queue_count;
   struct hisi_sas_dq *dq = &hisi_hba->dq[queue];

   hisi_hba->devices[i].device_id = i;
   sas_dev = &hisi_hba->devices[i];
   sas_dev->dev_status = HISI_SAS_DEV_INIT;
   sas_dev->dev_type = device->dev_type;
   sas_dev->hisi_hba = hisi_hba;
   sas_dev->sas_device = device;
   sas_dev->sata_idx = sata_idx;
   sas_dev->dq = dq;
   spin_lock_init(&sas_dev->lock);
   INIT_LIST_HEAD(&hisi_hba->devices[i].list);
   break;
  }
 }

out:
 spin_unlock_irqrestore(&hisi_hba->lock, flags);

 return sas_dev;
}
