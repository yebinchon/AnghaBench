
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_cmd_hdr {int dummy; } ;
struct hisi_hba {int queue_count; struct hisi_sas_cmd_hdr** cmd_hdr; struct hisi_sas_cmd_hdr** debugfs_cmd_hdr; } ;


 int HISI_SAS_QUEUE_SLOTS ;
 int memcpy (struct hisi_sas_cmd_hdr*,struct hisi_sas_cmd_hdr*,int) ;

__attribute__((used)) static void hisi_sas_debugfs_snapshot_dq_reg(struct hisi_hba *hisi_hba)
{
 int queue_entry_size = sizeof(struct hisi_sas_cmd_hdr);
 int i;

 for (i = 0; i < hisi_hba->queue_count; i++) {
  struct hisi_sas_cmd_hdr *debugfs_cmd_hdr, *cmd_hdr;
  int j;

  debugfs_cmd_hdr = hisi_hba->debugfs_cmd_hdr[i];
  cmd_hdr = hisi_hba->cmd_hdr[i];

  for (j = 0; j < HISI_SAS_QUEUE_SLOTS; j++)
   memcpy(&debugfs_cmd_hdr[j], &cmd_hdr[j],
          queue_entry_size);
 }
}
