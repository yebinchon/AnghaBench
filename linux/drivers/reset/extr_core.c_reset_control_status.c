
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reset_control {int id; TYPE_2__* rcdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* status ) (TYPE_2__*,int ) ;} ;


 int EINVAL ;
 int ENOTSUPP ;
 int IS_ERR (struct reset_control*) ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ reset_control_is_array (struct reset_control*) ;
 int stub1 (TYPE_2__*,int ) ;

int reset_control_status(struct reset_control *rstc)
{
 if (!rstc)
  return 0;

 if (WARN_ON(IS_ERR(rstc)) || reset_control_is_array(rstc))
  return -EINVAL;

 if (rstc->rcdev->ops->status)
  return rstc->rcdev->ops->status(rstc->rcdev, rstc->id);

 return -ENOTSUPP;
}
