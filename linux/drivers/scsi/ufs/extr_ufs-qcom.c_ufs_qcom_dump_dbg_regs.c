
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int REG_UFS_SYS1CLK_1US ;
 int ufs_qcom_dump_regs_wrapper ;
 int ufs_qcom_print_hw_debug_reg_all (struct ufs_hba*,int *,int ) ;
 int ufs_qcom_print_unipro_testbus (struct ufs_hba*) ;
 int ufs_qcom_testbus_read (struct ufs_hba*) ;
 int ufshcd_dump_regs (struct ufs_hba*,int ,int,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ufs_qcom_dump_dbg_regs(struct ufs_hba *hba)
{
 ufshcd_dump_regs(hba, REG_UFS_SYS1CLK_1US, 16 * 4,
    "HCI Vendor Specific Registers ");


 ufs_qcom_print_hw_debug_reg_all(hba, ((void*)0), ufs_qcom_dump_regs_wrapper);
 usleep_range(1000, 1100);
 ufs_qcom_testbus_read(hba);
 usleep_range(1000, 1100);
 ufs_qcom_print_unipro_testbus(hba);
 usleep_range(1000, 1100);
}
