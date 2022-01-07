
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int act8865_set_suspend_state (struct regulator_dev*,int) ;

__attribute__((used)) static int act8865_set_suspend_disable(struct regulator_dev *rdev)
{
 return act8865_set_suspend_state(rdev, 0);
}
