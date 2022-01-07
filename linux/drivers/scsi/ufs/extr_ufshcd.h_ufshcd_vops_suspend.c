
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* vops; } ;
typedef enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;
struct TYPE_2__ {int (* suspend ) (struct ufs_hba*,int) ;} ;


 int stub1 (struct ufs_hba*,int) ;

__attribute__((used)) static inline int ufshcd_vops_suspend(struct ufs_hba *hba, enum ufs_pm_op op)
{
 if (hba->vops && hba->vops->suspend)
  return hba->vops->suspend(hba, op);

 return 0;
}
