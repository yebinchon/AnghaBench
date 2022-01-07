
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_error_flags ) (struct regulator_dev*,unsigned int*) ;} ;


 int EINVAL ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;
 int stub1 (struct regulator_dev*,unsigned int*) ;

__attribute__((used)) static int _regulator_get_error_flags(struct regulator_dev *rdev,
     unsigned int *flags)
{
 int ret;

 regulator_lock(rdev);


 if (!rdev->desc->ops->get_error_flags) {
  ret = -EINVAL;
  goto out;
 }

 ret = rdev->desc->ops->get_error_flags(rdev, flags);
out:
 regulator_unlock(rdev);
 return ret;
}
