
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hisi_hba* private; } ;
struct hisi_sas_itct {int qw0; } ;
struct hisi_hba {struct hisi_sas_itct* debugfs_itct; } ;
typedef int __le64 ;


 int HISI_SAS_MAX_ITCT_ENTRIES ;
 int hisi_sas_show_row_64 (struct seq_file*,int,int,int *) ;

__attribute__((used)) static int hisi_sas_debugfs_itct_show(struct seq_file *s, void *p)
{
 int i;
 struct hisi_hba *hisi_hba = s->private;
 struct hisi_sas_itct *debugfs_itct = hisi_hba->debugfs_itct;

 for (i = 0; i < HISI_SAS_MAX_ITCT_ENTRIES; i++, debugfs_itct++) {
  __le64 *itct = &debugfs_itct->qw0;

  hisi_sas_show_row_64(s, i, sizeof(*debugfs_itct), itct);
 }

 return 0;
}
