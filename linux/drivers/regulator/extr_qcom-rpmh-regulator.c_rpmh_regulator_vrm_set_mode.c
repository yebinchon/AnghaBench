
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_vreg {unsigned int mode; int bypassed; } ;
struct regulator_dev {int dummy; } ;


 struct rpmh_vreg* rdev_get_drvdata (struct regulator_dev*) ;
 int rpmh_regulator_vrm_set_mode_bypass (struct rpmh_vreg*,unsigned int,int ) ;

__attribute__((used)) static int rpmh_regulator_vrm_set_mode(struct regulator_dev *rdev,
     unsigned int mode)
{
 struct rpmh_vreg *vreg = rdev_get_drvdata(rdev);
 int ret;

 if (mode == vreg->mode)
  return 0;

 ret = rpmh_regulator_vrm_set_mode_bypass(vreg, mode, vreg->bypassed);
 if (!ret)
  vreg->mode = mode;

 return ret;
}
