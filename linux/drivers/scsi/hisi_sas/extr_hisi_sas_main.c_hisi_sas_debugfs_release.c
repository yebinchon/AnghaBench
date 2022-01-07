
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int queue_count; int n_phy; int * debugfs_port_reg; int * debugfs_regs; int * debugfs_complete_hdr; int * debugfs_cmd_hdr; int debugfs_iost; int debugfs_itct_cache; int debugfs_iost_cache; struct device* dev; } ;
struct device {int dummy; } ;


 int DEBUGFS_REGS_NUM ;
 int devm_kfree (struct device*,int ) ;

__attribute__((used)) static void hisi_sas_debugfs_release(struct hisi_hba *hisi_hba)
{
 struct device *dev = hisi_hba->dev;
 int i;

 devm_kfree(dev, hisi_hba->debugfs_iost_cache);
 devm_kfree(dev, hisi_hba->debugfs_itct_cache);
 devm_kfree(dev, hisi_hba->debugfs_iost);

 for (i = 0; i < hisi_hba->queue_count; i++)
  devm_kfree(dev, hisi_hba->debugfs_cmd_hdr[i]);

 for (i = 0; i < hisi_hba->queue_count; i++)
  devm_kfree(dev, hisi_hba->debugfs_complete_hdr[i]);

 for (i = 0; i < DEBUGFS_REGS_NUM; i++)
  devm_kfree(dev, hisi_hba->debugfs_regs[i]);

 for (i = 0; i < hisi_hba->n_phy; i++)
  devm_kfree(dev, hisi_hba->debugfs_port_reg[i]);
}
