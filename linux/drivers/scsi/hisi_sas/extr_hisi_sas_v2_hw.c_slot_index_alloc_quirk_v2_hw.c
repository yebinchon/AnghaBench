
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_device {int sata_idx; } ;
struct hisi_hba {int slot_index_count; int lock; void* slot_index_tags; } ;
struct domain_device {struct hisi_sas_device* lldd_dev; } ;


 int EINVAL ;
 int HISI_MAX_SATA_SUPPORT_V2_HW ;
 int SAS_QUEUE_FULL ;
 int dev_is_sata (struct domain_device*) ;
 int find_next_zero_bit (void*,int,int) ;
 int set_bit (int,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
slot_index_alloc_quirk_v2_hw(struct hisi_hba *hisi_hba,
        struct domain_device *device)
{
 int sata_dev = dev_is_sata(device);
 void *bitmap = hisi_hba->slot_index_tags;
 struct hisi_sas_device *sas_dev = device->lldd_dev;
 int sata_idx = sas_dev->sata_idx;
 int start, end;
 unsigned long flags;

 if (!sata_dev) {





  start = 1;
  end = hisi_hba->slot_index_count;
 } else {
  if (sata_idx >= HISI_MAX_SATA_SUPPORT_V2_HW)
   return -EINVAL;







  start = 64 * (sata_idx + 1);
  end = 64 * (sata_idx + 2);
 }

 spin_lock_irqsave(&hisi_hba->lock, flags);
 while (1) {
  start = find_next_zero_bit(bitmap,
     hisi_hba->slot_index_count, start);
  if (start >= end) {
   spin_unlock_irqrestore(&hisi_hba->lock, flags);
   return -SAS_QUEUE_FULL;
  }



  if (sata_dev ^ (start & 1))
   break;
  start++;
 }

 set_bit(start, bitmap);
 spin_unlock_irqrestore(&hisi_hba->lock, flags);
 return start;
}
