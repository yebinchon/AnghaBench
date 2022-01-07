
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int hog_default; int p; } ;


 int IS_ERR (int ) ;
 int pinctrl_commit_state (int ,int ) ;

int pinctrl_force_default(struct pinctrl_dev *pctldev)
{
 if (!IS_ERR(pctldev->p) && !IS_ERR(pctldev->hog_default))
  return pinctrl_commit_state(pctldev->p, pctldev->hog_default);
 return 0;
}
