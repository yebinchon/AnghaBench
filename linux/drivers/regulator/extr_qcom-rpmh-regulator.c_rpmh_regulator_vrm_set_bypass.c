
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_vreg {int bypassed; int mode; } ;
struct regulator_dev {int dummy; } ;


 struct rpmh_vreg* rdev_get_drvdata (struct regulator_dev*) ;
 int rpmh_regulator_vrm_set_mode_bypass (struct rpmh_vreg*,int ,int) ;

__attribute__((used)) static int rpmh_regulator_vrm_set_bypass(struct regulator_dev *rdev,
    bool enable)
{
 struct rpmh_vreg *vreg = rdev_get_drvdata(rdev);
 int ret;

 if (vreg->bypassed == enable)
  return 0;

 ret = rpmh_regulator_vrm_set_mode_bypass(vreg, vreg->mode, enable);
 if (!ret)
  vreg->bypassed = enable;

 return ret;
}
