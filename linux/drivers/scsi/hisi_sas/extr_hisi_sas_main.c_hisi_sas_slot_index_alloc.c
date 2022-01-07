
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* request; } ;
struct hisi_hba {int slot_index_count; int last_slot_index; int lock; void* slot_index_tags; } ;
struct TYPE_2__ {int tag; } ;


 int HISI_SAS_UNRESERVED_IPTT ;
 int SAS_QUEUE_FULL ;
 int find_next_zero_bit (void*,int,int) ;
 int hisi_sas_slot_index_set (struct hisi_hba*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hisi_sas_slot_index_alloc(struct hisi_hba *hisi_hba,
         struct scsi_cmnd *scsi_cmnd)
{
 int index;
 void *bitmap = hisi_hba->slot_index_tags;
 unsigned long flags;

 if (scsi_cmnd)
  return scsi_cmnd->request->tag;

 spin_lock_irqsave(&hisi_hba->lock, flags);
 index = find_next_zero_bit(bitmap, hisi_hba->slot_index_count,
       hisi_hba->last_slot_index + 1);
 if (index >= hisi_hba->slot_index_count) {
  index = find_next_zero_bit(bitmap,
    hisi_hba->slot_index_count,
    HISI_SAS_UNRESERVED_IPTT);
  if (index >= hisi_hba->slot_index_count) {
   spin_unlock_irqrestore(&hisi_hba->lock, flags);
   return -SAS_QUEUE_FULL;
  }
 }
 hisi_sas_slot_index_set(hisi_hba, index);
 hisi_hba->last_slot_index = index;
 spin_unlock_irqrestore(&hisi_hba->lock, flags);

 return index;
}
