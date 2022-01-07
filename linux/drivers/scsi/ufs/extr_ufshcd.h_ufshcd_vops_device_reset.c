
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* vops; } ;
struct TYPE_2__ {int (* device_reset ) (struct ufs_hba*) ;} ;


 int stub1 (struct ufs_hba*) ;

__attribute__((used)) static inline void ufshcd_vops_device_reset(struct ufs_hba *hba)
{
 if (hba->vops && hba->vops->device_reset)
  hba->vops->device_reset(hba);
}
