
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int P1_GRP_4030 ;
 int twlreg_grp (struct regulator_dev*) ;

__attribute__((used)) static int twl4030reg_is_enabled(struct regulator_dev *rdev)
{
 int state = twlreg_grp(rdev);

 if (state < 0)
  return state;

 return state & P1_GRP_4030;
}
