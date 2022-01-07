
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int UFS_TEST_BUS ;
 int ufshcd_dump_regs (struct ufs_hba*,int ,int,char*) ;

__attribute__((used)) static void ufs_qcom_testbus_read(struct ufs_hba *hba)
{
 ufshcd_dump_regs(hba, UFS_TEST_BUS, 4, "UFS_TEST_BUS ");
}
