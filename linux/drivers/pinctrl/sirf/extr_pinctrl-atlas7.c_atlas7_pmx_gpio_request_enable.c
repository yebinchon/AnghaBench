
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pinctrl_gpio_range {size_t npins; size_t* pins; } ;
struct pinctrl_dev {int dummy; } ;
struct atlas7_pmx {int dev; } ;


 int EPERM ;
 int FUNC_GPIO ;
 int __atlas7_pmx_pin_enable (struct atlas7_pmx*,size_t,int ) ;
 int dev_dbg (int ,char*,size_t) ;
 int dev_err (int ,char*,size_t) ;
 struct atlas7_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int atlas7_pmx_gpio_request_enable(struct pinctrl_dev *pctldev,
  struct pinctrl_gpio_range *range, u32 pin)
{
 struct atlas7_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 u32 idx;

 dev_dbg(pmx->dev,
  "atlas7_pmx_gpio_request_enable: pin=%d\n", pin);
 for (idx = 0; idx < range->npins; idx++) {
  if (pin == range->pins[idx])
   break;
 }

 if (idx >= range->npins) {
  dev_err(pmx->dev,
   "The pin#%d could not be requested as GPIO!!\n",
   pin);
  return -EPERM;
 }

 __atlas7_pmx_pin_enable(pmx, pin, FUNC_GPIO);

 return 0;
}
