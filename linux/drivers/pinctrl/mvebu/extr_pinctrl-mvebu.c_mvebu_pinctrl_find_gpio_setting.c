
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pinctrl_group {unsigned int num_settings; struct mvebu_mpp_ctrl_setting* settings; } ;
struct mvebu_pinctrl {int variant; } ;
struct mvebu_mpp_ctrl_setting {int flags; int variant; } ;


 int MVEBU_SETTING_GPI ;
 int MVEBU_SETTING_GPO ;

__attribute__((used)) static struct mvebu_mpp_ctrl_setting *mvebu_pinctrl_find_gpio_setting(
 struct mvebu_pinctrl *pctl, struct mvebu_pinctrl_group *grp)
{
 unsigned n;
 for (n = 0; n < grp->num_settings; n++) {
  if (grp->settings[n].flags &
   (MVEBU_SETTING_GPO | MVEBU_SETTING_GPI)) {
   if (!pctl->variant || (pctl->variant &
      grp->settings[n].variant))
    return &grp->settings[n];
  }
 }
 return ((void*)0);
}
