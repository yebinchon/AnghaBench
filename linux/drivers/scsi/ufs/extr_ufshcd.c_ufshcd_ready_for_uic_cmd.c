
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int REG_CONTROLLER_STATUS ;
 int UIC_COMMAND_READY ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static inline bool ufshcd_ready_for_uic_cmd(struct ufs_hba *hba)
{
 if (ufshcd_readl(hba, REG_CONTROLLER_STATUS) & UIC_COMMAND_READY)
  return 1;
 else
  return 0;
}
