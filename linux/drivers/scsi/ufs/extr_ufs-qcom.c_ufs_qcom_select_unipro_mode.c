
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_host {int hba; } ;


 int QUNIPRO_SEL ;
 int REG_UFS_CFG1 ;
 int mb () ;
 scalar_t__ ufs_qcom_cap_qunipro (struct ufs_qcom_host*) ;
 int ufshcd_rmwl (int ,int ,int ,int ) ;

__attribute__((used)) static void ufs_qcom_select_unipro_mode(struct ufs_qcom_host *host)
{
 ufshcd_rmwl(host->hba, QUNIPRO_SEL,
     ufs_qcom_cap_qunipro(host) ? QUNIPRO_SEL : 0,
     REG_UFS_CFG1);

 mb();
}
