
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vctrl_data {int ctrl_reg; } ;
struct regulator_dev {int dummy; } ;


 struct vctrl_data* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_get_voltage (int ) ;
 int vctrl_calc_output_voltage (struct vctrl_data*,int) ;

__attribute__((used)) static int vctrl_get_voltage(struct regulator_dev *rdev)
{
 struct vctrl_data *vctrl = rdev_get_drvdata(rdev);
 int ctrl_uV = regulator_get_voltage(vctrl->ctrl_reg);

 return vctrl_calc_output_voltage(vctrl, ctrl_uV);
}
