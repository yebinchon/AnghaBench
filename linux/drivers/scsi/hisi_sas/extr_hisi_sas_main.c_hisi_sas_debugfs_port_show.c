
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {struct hisi_sas_phy* private; } ;
struct TYPE_2__ {size_t id; } ;
struct hisi_sas_phy {TYPE_1__ sas_phy; struct hisi_hba* hisi_hba; } ;
struct hisi_sas_hw {struct hisi_sas_debugfs_reg* debugfs_reg_port; } ;
struct hisi_sas_debugfs_reg {int dummy; } ;
struct hisi_hba {int ** debugfs_port_reg; struct hisi_sas_hw* hw; } ;


 int hisi_sas_debugfs_print_reg (int *,struct hisi_sas_debugfs_reg const*,struct seq_file*) ;

__attribute__((used)) static int hisi_sas_debugfs_port_show(struct seq_file *s, void *p)
{
 struct hisi_sas_phy *phy = s->private;
 struct hisi_hba *hisi_hba = phy->hisi_hba;
 const struct hisi_sas_hw *hw = hisi_hba->hw;
 const struct hisi_sas_debugfs_reg *reg_port = hw->debugfs_reg_port;
 u32 *databuf = hisi_hba->debugfs_port_reg[phy->sas_phy.id];

 hisi_sas_debugfs_print_reg(databuf, reg_port, s);

 return 0;
}
