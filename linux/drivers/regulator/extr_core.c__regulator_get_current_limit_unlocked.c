
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_current_limit ) (struct regulator_dev*) ;} ;


 int EINVAL ;
 int stub1 (struct regulator_dev*) ;

__attribute__((used)) static int _regulator_get_current_limit_unlocked(struct regulator_dev *rdev)
{

 if (!rdev->desc->ops->get_current_limit)
  return -EINVAL;

 return rdev->desc->ops->get_current_limit(rdev);
}
