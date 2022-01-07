
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {unsigned int (* get_mode ) (struct regulator_dev*) ;} ;


 unsigned int EINVAL ;
 unsigned int stub1 (struct regulator_dev*) ;

__attribute__((used)) static unsigned int _regulator_get_mode_unlocked(struct regulator_dev *rdev)
{

 if (!rdev->desc->ops->get_mode)
  return -EINVAL;

 return rdev->desc->ops->get_mode(rdev);
}
