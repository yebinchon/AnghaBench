
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mvebu_pinctrl_group {int data; TYPE_1__* ctrl; } ;
struct mvebu_pinctrl {int dummy; } ;
struct mvebu_mpp_ctrl_setting {int flags; } ;
struct TYPE_2__ {int (* mpp_gpio_dir ) (int ,unsigned int,int) ;} ;


 int EINVAL ;
 int ENOTSUPP ;
 int MVEBU_SETTING_GPI ;
 int MVEBU_SETTING_GPO ;
 struct mvebu_mpp_ctrl_setting* mvebu_pinctrl_find_gpio_setting (struct mvebu_pinctrl*,struct mvebu_pinctrl_group*) ;
 struct mvebu_pinctrl_group* mvebu_pinctrl_find_group_by_pid (struct mvebu_pinctrl*,unsigned int) ;
 struct mvebu_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int stub1 (int ,unsigned int,int) ;

__attribute__((used)) static int mvebu_pinmux_gpio_set_direction(struct pinctrl_dev *pctldev,
    struct pinctrl_gpio_range *range, unsigned offset, bool input)
{
 struct mvebu_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct mvebu_pinctrl_group *grp;
 struct mvebu_mpp_ctrl_setting *setting;

 grp = mvebu_pinctrl_find_group_by_pid(pctl, offset);
 if (!grp)
  return -EINVAL;

 if (grp->ctrl->mpp_gpio_dir)
  return grp->ctrl->mpp_gpio_dir(grp->data, offset, input);

 setting = mvebu_pinctrl_find_gpio_setting(pctl, grp);
 if (!setting)
  return -ENOTSUPP;

 if ((input && (setting->flags & MVEBU_SETTING_GPI)) ||
     (!input && (setting->flags & MVEBU_SETTING_GPO)))
  return 0;

 return -ENOTSUPP;
}
