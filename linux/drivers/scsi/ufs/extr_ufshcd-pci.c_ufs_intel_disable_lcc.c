
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ufs_hba {int dummy; } ;


 int PA_LOCAL_TX_LCC_ENABLE ;
 scalar_t__ UIC_ARG_MIB (int ) ;
 int ufshcd_dme_get (struct ufs_hba*,scalar_t__,scalar_t__*) ;
 int ufshcd_dme_set (struct ufs_hba*,scalar_t__,int ) ;

__attribute__((used)) static int ufs_intel_disable_lcc(struct ufs_hba *hba)
{
 u32 attr = UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE);
 u32 lcc_enable = 0;

 ufshcd_dme_get(hba, attr, &lcc_enable);
 if (lcc_enable)
  ufshcd_dme_set(hba, attr, 0);

 return 0;
}
