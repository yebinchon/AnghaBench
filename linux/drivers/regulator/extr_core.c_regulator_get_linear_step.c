
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_2__ {unsigned int uV_step; } ;



unsigned int regulator_get_linear_step(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;

 return rdev->desc->uV_step;
}
