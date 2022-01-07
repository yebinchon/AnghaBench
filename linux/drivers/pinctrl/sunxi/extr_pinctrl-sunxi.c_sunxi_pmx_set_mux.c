
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_pinctrl_group {int pin; int name; } ;
struct sunxi_pinctrl_function {int name; } ;
struct sunxi_pinctrl {struct sunxi_pinctrl_function* functions; struct sunxi_pinctrl_group* groups; } ;
struct sunxi_desc_function {int muxval; } ;
struct pinctrl_dev {int dummy; } ;


 int EINVAL ;
 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct sunxi_desc_function* sunxi_pinctrl_desc_find_function_by_name (struct sunxi_pinctrl*,int ,int ) ;
 int sunxi_pmx_set (struct pinctrl_dev*,int ,int ) ;

__attribute__((used)) static int sunxi_pmx_set_mux(struct pinctrl_dev *pctldev,
        unsigned function,
        unsigned group)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct sunxi_pinctrl_group *g = pctl->groups + group;
 struct sunxi_pinctrl_function *func = pctl->functions + function;
 struct sunxi_desc_function *desc =
  sunxi_pinctrl_desc_find_function_by_name(pctl,
        g->name,
        func->name);

 if (!desc)
  return -EINVAL;

 sunxi_pmx_set(pctldev, g->pin, desc->muxval);

 return 0;
}
