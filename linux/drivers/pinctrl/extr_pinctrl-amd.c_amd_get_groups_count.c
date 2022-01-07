
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct amd_gpio {int ngroups; } ;


 struct amd_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int amd_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct amd_gpio *gpio_dev = pinctrl_dev_get_drvdata(pctldev);

 return gpio_dev->ngroups;
}
