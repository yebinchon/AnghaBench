
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_hba {int lock; TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ slot_index_alloc; } ;


 int HISI_SAS_UNRESERVED_IPTT ;
 int hisi_sas_slot_index_clear (struct hisi_hba*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hisi_sas_slot_index_free(struct hisi_hba *hisi_hba, int slot_idx)
{
 unsigned long flags;

 if (hisi_hba->hw->slot_index_alloc ||
     slot_idx >= HISI_SAS_UNRESERVED_IPTT) {
  spin_lock_irqsave(&hisi_hba->lock, flags);
  hisi_sas_slot_index_clear(hisi_hba, slot_idx);
  spin_unlock_irqrestore(&hisi_hba->lock, flags);
 }
}
