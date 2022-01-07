
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3fwrn5_info {int phy_id; TYPE_1__* phy_ops; } ;
typedef enum s3fwrn5_mode { ____Placeholder_s3fwrn5_mode } s3fwrn5_mode ;
struct TYPE_2__ {int (* set_mode ) (int ,int) ;} ;


 int ENOTSUPP ;
 int stub1 (int ,int) ;

__attribute__((used)) static inline int s3fwrn5_set_mode(struct s3fwrn5_info *info,
 enum s3fwrn5_mode mode)
{
 if (!info->phy_ops->set_mode)
  return -ENOTSUPP;

 info->phy_ops->set_mode(info->phy_id, mode);

 return 0;
}
