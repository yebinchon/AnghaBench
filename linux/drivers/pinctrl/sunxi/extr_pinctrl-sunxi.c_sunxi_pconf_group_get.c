
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_pinctrl_group {int pin; } ;
struct sunxi_pinctrl {struct sunxi_pinctrl_group* groups; } ;
struct pinctrl_dev {int dummy; } ;


 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sunxi_pconf_get (struct pinctrl_dev*,int ,unsigned long*) ;

__attribute__((used)) static int sunxi_pconf_group_get(struct pinctrl_dev *pctldev,
     unsigned group,
     unsigned long *config)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct sunxi_pinctrl_group *g = &pctl->groups[group];


 return sunxi_pconf_get(pctldev, g->pin, config);
}
