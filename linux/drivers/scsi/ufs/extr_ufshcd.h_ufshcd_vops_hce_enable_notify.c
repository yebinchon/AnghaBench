
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* vops; } ;
struct TYPE_2__ {int (* hce_enable_notify ) (struct ufs_hba*,int) ;} ;


 int stub1 (struct ufs_hba*,int) ;

__attribute__((used)) static inline int ufshcd_vops_hce_enable_notify(struct ufs_hba *hba,
      bool status)
{
 if (hba->vops && hba->vops->hce_enable_notify)
  return hba->vops->hce_enable_notify(hba, status);

 return 0;
}
