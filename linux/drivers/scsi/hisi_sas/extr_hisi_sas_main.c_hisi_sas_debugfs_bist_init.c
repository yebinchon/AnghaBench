
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int debugfs_bist_linkrate; int debugfs_bist_dentry; int debugfs_bist_cnt; int debugfs_dir; } ;


 int SAS_LINK_RATE_1_5_GBPS ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct hisi_hba*,int *) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 int hisi_sas_debugfs_bist_code_mode_ops ;
 int hisi_sas_debugfs_bist_enable_ops ;
 int hisi_sas_debugfs_bist_linkrate_ops ;
 int hisi_sas_debugfs_bist_mode_ops ;
 int hisi_sas_debugfs_bist_phy_ops ;

__attribute__((used)) static void hisi_sas_debugfs_bist_init(struct hisi_hba *hisi_hba)
{
 hisi_hba->debugfs_bist_dentry =
   debugfs_create_dir("bist", hisi_hba->debugfs_dir);
 debugfs_create_file("link_rate", 0600,
       hisi_hba->debugfs_bist_dentry, hisi_hba,
       &hisi_sas_debugfs_bist_linkrate_ops);

 debugfs_create_file("code_mode", 0600,
       hisi_hba->debugfs_bist_dentry, hisi_hba,
       &hisi_sas_debugfs_bist_code_mode_ops);

 debugfs_create_file("phy_id", 0600, hisi_hba->debugfs_bist_dentry,
       hisi_hba, &hisi_sas_debugfs_bist_phy_ops);

 debugfs_create_u32("cnt", 0600, hisi_hba->debugfs_bist_dentry,
      &hisi_hba->debugfs_bist_cnt);

 debugfs_create_file("loopback_mode", 0600,
       hisi_hba->debugfs_bist_dentry,
       hisi_hba, &hisi_sas_debugfs_bist_mode_ops);

 debugfs_create_file("enable", 0600, hisi_hba->debugfs_bist_dentry,
       hisi_hba, &hisi_sas_debugfs_bist_enable_ops);

 hisi_hba->debugfs_bist_linkrate = SAS_LINK_RATE_1_5_GBPS;
}
