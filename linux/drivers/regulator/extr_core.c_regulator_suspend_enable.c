
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;
struct regulator_dev {int dummy; } ;


 int regulator_suspend_toggle (struct regulator_dev*,int ,int) ;

int regulator_suspend_enable(struct regulator_dev *rdev,
        suspend_state_t state)
{
 return regulator_suspend_toggle(rdev, state, 1);
}
