
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ufs_hba {TYPE_1__* vops; } ;
struct TYPE_2__ {void (* setup_task_mgmt ) (struct ufs_hba*,int,int ) ;} ;


 void stub1 (struct ufs_hba*,int,int ) ;

__attribute__((used)) static inline void ufshcd_vops_setup_task_mgmt(struct ufs_hba *hba,
     int tag, u8 tm_function)
{
 if (hba->vops && hba->vops->setup_task_mgmt)
  return hba->vops->setup_task_mgmt(hba, tag, tm_function);
}
