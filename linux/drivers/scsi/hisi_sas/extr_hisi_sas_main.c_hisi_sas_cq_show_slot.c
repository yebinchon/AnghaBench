
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct hisi_sas_cq {size_t id; struct hisi_hba* hisi_hba; } ;
struct hisi_hba {TYPE_1__* hw; void** debugfs_complete_hdr; } ;
typedef int __le32 ;
struct TYPE_2__ {int complete_hdr_size; } ;


 int hisi_sas_show_row_32 (struct seq_file*,int,int,int *) ;

__attribute__((used)) static void hisi_sas_cq_show_slot(struct seq_file *s, int slot, void *cq_ptr)
{
 struct hisi_sas_cq *cq = cq_ptr;
 struct hisi_hba *hisi_hba = cq->hisi_hba;
 void *complete_queue = hisi_hba->debugfs_complete_hdr[cq->id];
 __le32 *complete_hdr = complete_queue +
   (hisi_hba->hw->complete_hdr_size * slot);

 hisi_sas_show_row_32(s, slot,
        hisi_hba->hw->complete_hdr_size,
        complete_hdr);
}
