
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
typedef enum ufs_notify_change_status { ____Placeholder_ufs_notify_change_status } ufs_notify_change_status ;


 int PA_LOCAL_TX_LCC_ENABLE ;
 int PRE_CHANGE ;
 int UIC_ARG_MIB (int ) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static int cdns_ufs_link_startup_notify(struct ufs_hba *hba,
     enum ufs_notify_change_status status)
{
 if (status != PRE_CHANGE)
  return 0;
 ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);

 return 0;
}
