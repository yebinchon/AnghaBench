
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinmux_ops {int (* free ) (struct pinctrl_dev*,int) ;int (* gpio_disable_free ) (struct pinctrl_dev*,struct pinctrl_gpio_range*,int) ;} ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int owner; int dev; TYPE_1__* desc; } ;
struct pin_desc {char* gpio_owner; char* mux_owner; int * mux_setting; scalar_t__ mux_usecount; } ;
struct TYPE_2__ {struct pinmux_ops* pmxops; } ;


 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int module_put (int ) ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,int) ;
 int stub1 (struct pinctrl_dev*,struct pinctrl_gpio_range*,int) ;
 int stub2 (struct pinctrl_dev*,int) ;

__attribute__((used)) static const char *pin_free(struct pinctrl_dev *pctldev, int pin,
       struct pinctrl_gpio_range *gpio_range)
{
 const struct pinmux_ops *ops = pctldev->desc->pmxops;
 struct pin_desc *desc;
 const char *owner;

 desc = pin_desc_get(pctldev, pin);
 if (desc == ((void*)0)) {
  dev_err(pctldev->dev,
   "pin is not registered so it cannot be freed\n");
  return ((void*)0);
 }

 if (!gpio_range) {



  if (WARN_ON(!desc->mux_usecount))
   return ((void*)0);
  desc->mux_usecount--;
  if (desc->mux_usecount)
   return ((void*)0);
 }





 if (gpio_range && ops->gpio_disable_free)
  ops->gpio_disable_free(pctldev, gpio_range, pin);
 else if (ops->free)
  ops->free(pctldev, pin);

 if (gpio_range) {
  owner = desc->gpio_owner;
  desc->gpio_owner = ((void*)0);
 } else {
  owner = desc->mux_owner;
  desc->mux_owner = ((void*)0);
  desc->mux_setting = ((void*)0);
 }

 module_put(pctldev->owner);

 return owner;
}
