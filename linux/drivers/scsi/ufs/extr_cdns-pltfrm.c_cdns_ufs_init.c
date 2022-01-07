
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* vops; } ;
struct TYPE_2__ {int (* phy_initialization ) (struct ufs_hba*) ;} ;


 int stub1 (struct ufs_hba*) ;

__attribute__((used)) static int cdns_ufs_init(struct ufs_hba *hba)
{
 int status = 0;

 if (hba->vops && hba->vops->phy_initialization)
  status = hba->vops->phy_initialization(hba);

 return status;
}
