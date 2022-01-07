
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_pmx {struct spear_pinctrl_machdata* machdata; } ;
struct spear_pinctrl_machdata {int (* gpio_request_endisable ) (struct spear_pmx*,unsigned int,int) ;} ;
struct spear_gpio_pingroup {int nmuxregs; int muxregs; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 struct spear_gpio_pingroup* get_gpio_pingroup (struct spear_pmx*,unsigned int) ;
 int muxregs_endisable (struct spear_pmx*,int ,int ,int) ;
 struct spear_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int stub1 (struct spear_pmx*,unsigned int,int) ;

__attribute__((used)) static int gpio_request_endisable(struct pinctrl_dev *pctldev,
  struct pinctrl_gpio_range *range, unsigned offset, bool enable)
{
 struct spear_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 struct spear_pinctrl_machdata *machdata = pmx->machdata;
 struct spear_gpio_pingroup *gpio_pingroup;





 gpio_pingroup = get_gpio_pingroup(pmx, offset);
 if (gpio_pingroup)
  muxregs_endisable(pmx, gpio_pingroup->muxregs,
    gpio_pingroup->nmuxregs, enable);





 if (machdata->gpio_request_endisable)
  machdata->gpio_request_endisable(pmx, offset, enable);

 return 0;
}
