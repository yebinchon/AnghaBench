
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int rk817_set_suspend_enable_ctrl (struct regulator_dev*,int ) ;

__attribute__((used)) static int rk817_set_suspend_disable(struct regulator_dev *rdev)
{
 return rk817_set_suspend_enable_ctrl(rdev, 0);
}
