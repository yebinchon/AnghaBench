
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int DEVICE_PRESENT ;
 int REG_CONTROLLER_STATUS ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static inline bool ufshcd_is_device_present(struct ufs_hba *hba)
{
 return (ufshcd_readl(hba, REG_CONTROLLER_STATUS) &
      DEVICE_PRESENT) ? 1 : 0;
}
