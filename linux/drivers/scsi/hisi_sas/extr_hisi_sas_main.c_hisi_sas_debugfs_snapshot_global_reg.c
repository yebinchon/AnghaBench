
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_sas_hw {struct hisi_sas_debugfs_reg** debugfs_reg_array; } ;
struct hisi_sas_debugfs_reg {int count; int (* read_global_reg ) (struct hisi_hba*,int) ;} ;
struct hisi_hba {struct hisi_sas_hw* hw; int ** debugfs_regs; } ;


 size_t DEBUGFS_GLOBAL ;
 int stub1 (struct hisi_hba*,int) ;

__attribute__((used)) static void hisi_sas_debugfs_snapshot_global_reg(struct hisi_hba *hisi_hba)
{
 u32 *databuf = hisi_hba->debugfs_regs[DEBUGFS_GLOBAL];
 const struct hisi_sas_hw *hw = hisi_hba->hw;
 const struct hisi_sas_debugfs_reg *global =
   hw->debugfs_reg_array[DEBUGFS_GLOBAL];
 int i;

 for (i = 0; i < global->count; i++, databuf++)
  *databuf = global->read_global_reg(hisi_hba, 4 * i);
}
