
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vctrl_voltage_range {int min_uV; int max_uV; } ;
struct TYPE_2__ {struct vctrl_voltage_range out; struct vctrl_voltage_range ctrl; } ;
struct vctrl_data {TYPE_1__ vrange; } ;
typedef int s64 ;


 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int vctrl_calc_output_voltage(struct vctrl_data *vctrl, int ctrl_uV)
{
 struct vctrl_voltage_range *ctrl = &vctrl->vrange.ctrl;
 struct vctrl_voltage_range *out = &vctrl->vrange.out;

 if (ctrl_uV < 0) {
  pr_err("vctrl: failed to get control voltage\n");
  return ctrl_uV;
 }

 if (ctrl_uV < ctrl->min_uV)
  return out->min_uV;

 if (ctrl_uV > ctrl->max_uV)
  return out->max_uV;

 return out->min_uV +
  DIV_ROUND_CLOSEST_ULL((s64)(ctrl_uV - ctrl->min_uV) *
          (out->max_uV - out->min_uV),
          ctrl->max_uV - ctrl->min_uV);
}
