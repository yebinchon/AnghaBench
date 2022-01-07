
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int debugfs_dir; struct device* dev; } ;
struct device {int dummy; } ;


 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct hisi_hba*,int *) ;
 int debugfs_remove_recursive (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_name (struct device*) ;
 scalar_t__ hisi_sas_debugfs_alloc (struct hisi_hba*) ;
 int hisi_sas_debugfs_bist_init (struct hisi_hba*) ;
 int hisi_sas_debugfs_dir ;
 int hisi_sas_debugfs_trigger_dump_fops ;

void hisi_sas_debugfs_init(struct hisi_hba *hisi_hba)
{
 struct device *dev = hisi_hba->dev;

 hisi_hba->debugfs_dir = debugfs_create_dir(dev_name(dev),
         hisi_sas_debugfs_dir);
 debugfs_create_file("trigger_dump", 0600,
       hisi_hba->debugfs_dir,
       hisi_hba,
       &hisi_sas_debugfs_trigger_dump_fops);


 hisi_sas_debugfs_bist_init(hisi_hba);

 if (hisi_sas_debugfs_alloc(hisi_hba)) {
  debugfs_remove_recursive(hisi_hba->debugfs_dir);
  dev_dbg(dev, "failed to init debugfs!\n");
 }
}
