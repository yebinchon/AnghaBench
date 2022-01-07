
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct mvebu_pinctrl_group {int gid; } ;
struct mvebu_pinctrl_function {int name; int * groups; } ;
struct mvebu_pinctrl {int dev; struct mvebu_pinctrl_group* groups; struct mvebu_pinctrl_function* functions; } ;
struct mvebu_mpp_ctrl_setting {unsigned long val; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ,int ) ;
 int mvebu_pinconf_group_set (struct pinctrl_dev*,int ,unsigned long*,int) ;
 struct mvebu_mpp_ctrl_setting* mvebu_pinctrl_find_setting_by_name (struct mvebu_pinctrl*,struct mvebu_pinctrl_group*,int ) ;
 struct mvebu_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mvebu_pinmux_set(struct pinctrl_dev *pctldev, unsigned fid,
       unsigned gid)
{
 struct mvebu_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct mvebu_pinctrl_function *func = &pctl->functions[fid];
 struct mvebu_pinctrl_group *grp = &pctl->groups[gid];
 struct mvebu_mpp_ctrl_setting *setting;
 int ret;
 unsigned long config;

 setting = mvebu_pinctrl_find_setting_by_name(pctl, grp,
           func->name);
 if (!setting) {
  dev_err(pctl->dev,
   "unable to find setting %s in group %s\n",
   func->name, func->groups[gid]);
  return -EINVAL;
 }

 config = setting->val;
 ret = mvebu_pinconf_group_set(pctldev, grp->gid, &config, 1);
 if (ret) {
  dev_err(pctl->dev, "cannot set group %s to %s\n",
   func->groups[gid], func->name);
  return ret;
 }

 return 0;
}
