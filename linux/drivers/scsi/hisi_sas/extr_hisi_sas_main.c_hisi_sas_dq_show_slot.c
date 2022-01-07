
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct hisi_sas_dq {size_t id; struct hisi_hba* hisi_hba; } ;
struct hisi_sas_cmd_hdr {int dummy; } ;
struct hisi_hba {void** debugfs_cmd_hdr; } ;
typedef int __le32 ;


 int hisi_sas_show_row_32 (struct seq_file*,int,int,int *) ;

__attribute__((used)) static void hisi_sas_dq_show_slot(struct seq_file *s, int slot, void *dq_ptr)
{
 struct hisi_sas_dq *dq = dq_ptr;
 struct hisi_hba *hisi_hba = dq->hisi_hba;
 void *cmd_queue = hisi_hba->debugfs_cmd_hdr[dq->id];
 __le32 *cmd_hdr = cmd_queue +
  sizeof(struct hisi_sas_cmd_hdr) * slot;

 hisi_sas_show_row_32(s, slot, sizeof(struct hisi_sas_cmd_hdr), cmd_hdr);
}
