
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct arizona_micsupp {int check_cp_work; } ;


 struct arizona_micsupp* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_set_bypass_regmap (struct regulator_dev*,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static int arizona_micsupp_set_bypass(struct regulator_dev *rdev, bool ena)
{
 struct arizona_micsupp *micsupp = rdev_get_drvdata(rdev);
 int ret;

 ret = regulator_set_bypass_regmap(rdev, ena);
 if (ret == 0)
  schedule_work(&micsupp->check_cp_work);

 return ret;
}
