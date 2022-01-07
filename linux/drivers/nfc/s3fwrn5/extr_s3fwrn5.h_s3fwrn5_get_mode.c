
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3fwrn5_info {int phy_id; TYPE_1__* phy_ops; } ;
typedef enum s3fwrn5_mode { ____Placeholder_s3fwrn5_mode } s3fwrn5_mode ;
struct TYPE_2__ {int (* get_mode ) (int ) ;} ;


 int ENOTSUPP ;
 int stub1 (int ) ;

__attribute__((used)) static inline enum s3fwrn5_mode s3fwrn5_get_mode(struct s3fwrn5_info *info)
{
 if (!info->phy_ops->get_mode)
  return -ENOTSUPP;

 return info->phy_ops->get_mode(info->phy_id);
}
