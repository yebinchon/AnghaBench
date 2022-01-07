
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_cmd {int data; scalar_t__ addr; } ;
struct rpmh_vreg {int enabled; int voltage_selector; scalar_t__ addr; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int ENOTRECOVERABLE ;
 scalar_t__ RPMH_REGULATOR_REG_ENABLE ;
 int _rpmh_regulator_vrm_set_voltage_sel (struct regulator_dev*,int ,int) ;
 struct rpmh_vreg* rdev_get_drvdata (struct regulator_dev*) ;
 int rpmh_regulator_send_request (struct rpmh_vreg*,struct tcs_cmd*,int) ;

__attribute__((used)) static int rpmh_regulator_set_enable_state(struct regulator_dev *rdev,
     bool enable)
{
 struct rpmh_vreg *vreg = rdev_get_drvdata(rdev);
 struct tcs_cmd cmd = {
  .addr = vreg->addr + RPMH_REGULATOR_REG_ENABLE,
  .data = enable,
 };
 int ret;

 if (vreg->enabled == -EINVAL &&
     vreg->voltage_selector != -ENOTRECOVERABLE) {
  ret = _rpmh_regulator_vrm_set_voltage_sel(rdev,
      vreg->voltage_selector, 1);
  if (ret < 0)
   return ret;
 }

 ret = rpmh_regulator_send_request(vreg, &cmd, enable);
 if (!ret)
  vreg->enabled = enable;

 return ret;
}
