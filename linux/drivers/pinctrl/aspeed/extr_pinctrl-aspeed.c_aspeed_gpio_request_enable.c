
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct aspeed_sig_expr {int dummy; } ;
struct aspeed_pinctrl_data {int pinmux; TYPE_1__* pins; } ;
struct aspeed_pin_desc {int name; struct aspeed_sig_expr*** prios; } ;
struct TYPE_2__ {struct aspeed_pin_desc* drv_data; } ;


 int EINVAL ;
 int ENXIO ;
 int aspeed_disable_sig (int *,struct aspeed_sig_expr const**) ;
 scalar_t__ aspeed_gpio_in_exprs (struct aspeed_sig_expr const**) ;
 int aspeed_sig_expr_enable (int *,struct aspeed_sig_expr const*) ;
 char* get_defined_signals (struct aspeed_pin_desc const*) ;
 int kfree (char*) ;
 struct aspeed_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pr_warn (char*,int ,unsigned int,char*) ;

int aspeed_gpio_request_enable(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range,
          unsigned int offset)
{
 int ret;
 struct aspeed_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);
 const struct aspeed_pin_desc *pdesc = pdata->pins[offset].drv_data;
 const struct aspeed_sig_expr ***prios, **funcs, *expr;

 if (!pdesc)
  return -EINVAL;

 prios = pdesc->prios;

 if (!prios)
  return -ENXIO;


 while ((funcs = *prios)) {
  if (aspeed_gpio_in_exprs(funcs))
   break;

  ret = aspeed_disable_sig(&pdata->pinmux, funcs);
  if (ret)
   return ret;

  prios++;
 }

 if (!funcs) {
  char *signals = get_defined_signals(pdesc);

  pr_warn("No GPIO signal type found on pin %s (%d). Found: %s\n",
   pdesc->name, offset, signals);
  kfree(signals);

  return -ENXIO;
 }

 expr = *funcs;






 if (!expr)
  return 0;





 return aspeed_sig_expr_enable(&pdata->pinmux, expr);
}
