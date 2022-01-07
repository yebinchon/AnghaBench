
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int select_major; scalar_t__ select_minor; } ;
struct ufs_qcom_host {TYPE_2__* hba; TYPE_1__ testbus; } ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int EPERM ;
 int REG_UFS_CFG1 ;
 int TEST_BUS_SEL ;
 int TEST_BUS_SUB_SEL_MASK ;
 int UFS_TEST_BUS_CTRL_0 ;
 int UFS_TEST_BUS_CTRL_1 ;
 int UFS_TEST_BUS_CTRL_2 ;
 int UFS_UNIPRO_CFG ;
 int mb () ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int ufs_qcom_enable_test_bus (struct ufs_qcom_host*) ;
 int ufs_qcom_testbus_cfg_is_ok (struct ufs_qcom_host*) ;
 int ufshcd_hold (TYPE_2__*,int) ;
 int ufshcd_release (TYPE_2__*) ;
 int ufshcd_rmwl (TYPE_2__*,int,int,int) ;

int ufs_qcom_testbus_config(struct ufs_qcom_host *host)
{
 int reg;
 int offset;
 u32 mask = TEST_BUS_SUB_SEL_MASK;

 if (!host)
  return -EINVAL;

 if (!ufs_qcom_testbus_cfg_is_ok(host))
  return -EPERM;

 switch (host->testbus.select_major) {
 case 131:
  reg = UFS_TEST_BUS_CTRL_0;
  offset = 24;
  break;
 case 132:
  reg = UFS_TEST_BUS_CTRL_0;
  offset = 16;
  break;
 case 133:
  reg = UFS_TEST_BUS_CTRL_0;
  offset = 8;
  break;
 case 136:
  reg = UFS_TEST_BUS_CTRL_0;
  offset = 0;
  break;
 case 138:
  reg = UFS_TEST_BUS_CTRL_1;
  offset = 24;
  break;
 case 134:
  reg = UFS_TEST_BUS_CTRL_1;
  offset = 16;
  break;
 case 135:
  reg = UFS_TEST_BUS_CTRL_1;
  offset = 8;
  break;
 case 137:
  reg = UFS_TEST_BUS_CTRL_1;
  offset = 0;
  break;
 case 128:
  reg = UFS_TEST_BUS_CTRL_2;
  offset = 16;
  break;
 case 139:
  reg = UFS_TEST_BUS_CTRL_2;
  offset = 8;
  break;
 case 129:
  reg = UFS_TEST_BUS_CTRL_2;
  offset = 0;
  break;
 case 130:
  reg = UFS_UNIPRO_CFG;
  offset = 20;
  mask = 0xFFF;
  break;





 }
 mask <<= offset;

 pm_runtime_get_sync(host->hba->dev);
 ufshcd_hold(host->hba, 0);
 ufshcd_rmwl(host->hba, TEST_BUS_SEL,
      (u32)host->testbus.select_major << 19,
      REG_UFS_CFG1);
 ufshcd_rmwl(host->hba, mask,
      (u32)host->testbus.select_minor << offset,
      reg);
 ufs_qcom_enable_test_bus(host);




 mb();
 ufshcd_release(host->hba);
 pm_runtime_put_sync(host->hba->dev);

 return 0;
}
