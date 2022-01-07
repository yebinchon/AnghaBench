
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int regulator_lock_nested (struct regulator_dev*,int *) ;

void regulator_lock(struct regulator_dev *rdev)
{
 regulator_lock_nested(rdev, ((void*)0));
}
