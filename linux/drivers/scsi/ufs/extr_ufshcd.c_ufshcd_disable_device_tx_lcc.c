
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int ufshcd_disable_tx_lcc (struct ufs_hba*,int) ;

__attribute__((used)) static inline int ufshcd_disable_device_tx_lcc(struct ufs_hba *hba)
{
 return ufshcd_disable_tx_lcc(hba, 1);
}
