
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hisi_hba* private; } ;
struct hisi_sas_iost {int qw0; } ;
struct hisi_hba {struct hisi_sas_iost* debugfs_iost; } ;
typedef int __le64 ;


 int HISI_SAS_MAX_COMMANDS ;
 int hisi_sas_show_row_64 (struct seq_file*,int,int,int *) ;

__attribute__((used)) static int hisi_sas_debugfs_iost_show(struct seq_file *s, void *p)
{
 struct hisi_hba *hisi_hba = s->private;
 struct hisi_sas_iost *debugfs_iost = hisi_hba->debugfs_iost;
 int i, max_command_entries = HISI_SAS_MAX_COMMANDS;

 for (i = 0; i < max_command_entries; i++, debugfs_iost++) {
  __le64 *iost = &debugfs_iost->qw0;

  hisi_sas_show_row_64(s, i, sizeof(*debugfs_iost), iost);
 }

 return 0;
}
