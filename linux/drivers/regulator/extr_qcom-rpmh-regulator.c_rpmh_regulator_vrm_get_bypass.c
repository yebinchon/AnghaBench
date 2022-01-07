
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_vreg {int bypassed; } ;
struct regulator_dev {int dummy; } ;


 struct rpmh_vreg* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int rpmh_regulator_vrm_get_bypass(struct regulator_dev *rdev,
    bool *enable)
{
 struct rpmh_vreg *vreg = rdev_get_drvdata(rdev);

 *enable = vreg->bypassed;

 return 0;
}
