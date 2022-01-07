
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmic_mpp_state {int dummy; } ;
struct pmic_mpp_pad {unsigned int function; unsigned int is_enabled; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct pmic_mpp_pad* drv_data; } ;


 int PMIC_MPP_REG_EN_CTL ;
 unsigned int PMIC_MPP_REG_MASTER_EN_SHIFT ;
 struct pmic_mpp_state* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pmic_mpp_write (struct pmic_mpp_state*,struct pmic_mpp_pad*,int ,unsigned int) ;
 int pmic_mpp_write_mode_ctl (struct pmic_mpp_state*,struct pmic_mpp_pad*) ;

__attribute__((used)) static int pmic_mpp_set_mux(struct pinctrl_dev *pctldev, unsigned function,
    unsigned pin)
{
 struct pmic_mpp_state *state = pinctrl_dev_get_drvdata(pctldev);
 struct pmic_mpp_pad *pad;
 unsigned int val;
 int ret;

 pad = pctldev->desc->pins[pin].drv_data;

 pad->function = function;

 ret = pmic_mpp_write_mode_ctl(state, pad);
 if (ret < 0)
  return ret;

 val = pad->is_enabled << PMIC_MPP_REG_MASTER_EN_SHIFT;

 return pmic_mpp_write(state, pad, PMIC_MPP_REG_EN_CTL, val);
}
