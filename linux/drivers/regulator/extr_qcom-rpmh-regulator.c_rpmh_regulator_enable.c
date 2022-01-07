
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int rpmh_regulator_set_enable_state (struct regulator_dev*,int) ;

__attribute__((used)) static int rpmh_regulator_enable(struct regulator_dev *rdev)
{
 return rpmh_regulator_set_enable_state(rdev, 1);
}
