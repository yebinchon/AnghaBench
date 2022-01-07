
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int debugfs_dir; } ;


 int debugfs_remove_recursive (int ) ;

void hisi_sas_debugfs_exit(struct hisi_hba *hisi_hba)
{
 debugfs_remove_recursive(hisi_hba->debugfs_dir);
}
