
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_host {int dbg_print_en; int hba; } ;


 int REG_UFS_CFG1 ;
 int TEST_BUS_EN ;
 int UFS_QCOM_DBG_PRINT_TEST_BUS_EN ;
 int UFS_REG_TEST_BUS_EN ;
 int ufshcd_rmwl (int ,int ,int ,int ) ;

__attribute__((used)) static void ufs_qcom_enable_test_bus(struct ufs_qcom_host *host)
{
 if (host->dbg_print_en & UFS_QCOM_DBG_PRINT_TEST_BUS_EN) {
  ufshcd_rmwl(host->hba, UFS_REG_TEST_BUS_EN,
    UFS_REG_TEST_BUS_EN, REG_UFS_CFG1);
  ufshcd_rmwl(host->hba, TEST_BUS_EN, TEST_BUS_EN, REG_UFS_CFG1);
 } else {
  ufshcd_rmwl(host->hba, UFS_REG_TEST_BUS_EN, 0, REG_UFS_CFG1);
  ufshcd_rmwl(host->hba, TEST_BUS_EN, 0, REG_UFS_CFG1);
 }
}
