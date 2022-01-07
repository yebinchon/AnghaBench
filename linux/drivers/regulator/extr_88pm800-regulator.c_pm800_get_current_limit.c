
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct pm800_regulator_info {int max_ua; } ;


 struct pm800_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int pm800_get_current_limit(struct regulator_dev *rdev)
{
 struct pm800_regulator_info *info = rdev_get_drvdata(rdev);

 return info->max_ua;
}
