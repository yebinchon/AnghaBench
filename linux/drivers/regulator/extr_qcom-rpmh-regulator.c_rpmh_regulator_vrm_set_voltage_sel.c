
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_vreg {unsigned int voltage_selector; int enabled; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int _rpmh_regulator_vrm_set_voltage_sel (struct regulator_dev*,unsigned int,int) ;
 struct rpmh_vreg* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int rpmh_regulator_vrm_set_voltage_sel(struct regulator_dev *rdev,
     unsigned int selector)
{
 struct rpmh_vreg *vreg = rdev_get_drvdata(rdev);

 if (vreg->enabled == -EINVAL) {




  vreg->voltage_selector = selector;
  return 0;
 }

 return _rpmh_regulator_vrm_set_voltage_sel(rdev, selector,
     selector > vreg->voltage_selector);
}
