
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_sas_hw {struct hisi_sas_debugfs_reg** debugfs_reg_array; } ;
struct hisi_sas_debugfs_reg {int count; scalar_t__ base_off; int (* read_global_reg ) (struct hisi_hba*,scalar_t__) ;} ;
struct hisi_hba {struct hisi_sas_hw* hw; int ** debugfs_regs; } ;


 size_t DEBUGFS_RAS ;
 int stub1 (struct hisi_hba*,scalar_t__) ;

__attribute__((used)) static void hisi_sas_debugfs_snapshot_ras_reg(struct hisi_hba *hisi_hba)
{
 u32 *databuf = hisi_hba->debugfs_regs[DEBUGFS_RAS];
 const struct hisi_sas_hw *hw = hisi_hba->hw;
 const struct hisi_sas_debugfs_reg *ras =
   hw->debugfs_reg_array[DEBUGFS_RAS];
 int i;

 for (i = 0; i < ras->count; i++, databuf++)
  *databuf = ras->read_global_reg(hisi_hba,
      4 * i + ras->base_off);
}
