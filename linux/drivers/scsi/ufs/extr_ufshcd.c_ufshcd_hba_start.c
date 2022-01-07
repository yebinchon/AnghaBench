
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int CONTROLLER_ENABLE ;
 int REG_CONTROLLER_ENABLE ;
 int ufshcd_writel (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static inline void ufshcd_hba_start(struct ufs_hba *hba)
{
 ufshcd_writel(hba, CONTROLLER_ENABLE, REG_CONTROLLER_ENABLE);
}
