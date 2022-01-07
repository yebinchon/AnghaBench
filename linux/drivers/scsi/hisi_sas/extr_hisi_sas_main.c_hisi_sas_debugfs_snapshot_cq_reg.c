
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_hba {int queue_count; int * complete_hdr; int * debugfs_complete_hdr; TYPE_1__* hw; } ;
struct TYPE_2__ {int complete_hdr_size; } ;


 int HISI_SAS_QUEUE_SLOTS ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void hisi_sas_debugfs_snapshot_cq_reg(struct hisi_hba *hisi_hba)
{
 int queue_entry_size = hisi_hba->hw->complete_hdr_size;
 int i;

 for (i = 0; i < hisi_hba->queue_count; i++)
  memcpy(hisi_hba->debugfs_complete_hdr[i],
         hisi_hba->complete_hdr[i],
         HISI_SAS_QUEUE_SLOTS * queue_entry_size);
}
