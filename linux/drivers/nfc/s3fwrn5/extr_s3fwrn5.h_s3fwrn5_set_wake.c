
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3fwrn5_info {int phy_id; TYPE_1__* phy_ops; } ;
struct TYPE_2__ {int (* set_wake ) (int ,int) ;} ;


 int ENOTSUPP ;
 int stub1 (int ,int) ;

__attribute__((used)) static inline int s3fwrn5_set_wake(struct s3fwrn5_info *info, bool wake)
{
 if (!info->phy_ops->set_wake)
  return -ENOTSUPP;

 info->phy_ops->set_wake(info->phy_id, wake);

 return 0;
}
