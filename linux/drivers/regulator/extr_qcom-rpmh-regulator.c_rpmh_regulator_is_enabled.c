
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_vreg {int enabled; } ;
struct regulator_dev {int dummy; } ;


 struct rpmh_vreg* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int rpmh_regulator_is_enabled(struct regulator_dev *rdev)
{
 struct rpmh_vreg *vreg = rdev_get_drvdata(rdev);

 return vreg->enabled;
}
