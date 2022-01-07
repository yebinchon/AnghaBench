
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int select_minor; int select_major; } ;
struct ufs_qcom_host {TYPE_1__ testbus; } ;
struct ufs_hba {int dummy; } ;


 int DUMP_PREFIX_OFFSET ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int TSTBUS_UNIPRO ;
 int UFS_TEST_BUS ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int,int) ;
 int ufs_qcom_testbus_config (struct ufs_qcom_host*) ;
 struct ufs_qcom_host* ufshcd_get_variant (struct ufs_hba*) ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static void ufs_qcom_print_unipro_testbus(struct ufs_hba *hba)
{
 struct ufs_qcom_host *host = ufshcd_get_variant(hba);
 u32 *testbus = ((void*)0);
 int i, nminor = 256, testbus_len = nminor * sizeof(u32);

 testbus = kmalloc(testbus_len, GFP_KERNEL);
 if (!testbus)
  return;

 host->testbus.select_major = TSTBUS_UNIPRO;
 for (i = 0; i < nminor; i++) {
  host->testbus.select_minor = i;
  ufs_qcom_testbus_config(host);
  testbus[i] = ufshcd_readl(hba, UFS_TEST_BUS);
 }
 print_hex_dump(KERN_ERR, "UNIPRO_TEST_BUS ", DUMP_PREFIX_OFFSET,
   16, 4, testbus, testbus_len, 0);
 kfree(testbus);
}
