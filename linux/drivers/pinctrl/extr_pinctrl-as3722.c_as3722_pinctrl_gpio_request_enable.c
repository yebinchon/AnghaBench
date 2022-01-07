
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct as3722_pctrl_info {TYPE_1__* gpio_control; } ;
struct TYPE_2__ {scalar_t__ io_function; } ;


 int EBUSY ;
 struct as3722_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int as3722_pinctrl_gpio_request_enable(struct pinctrl_dev *pctldev,
  struct pinctrl_gpio_range *range, unsigned offset)
{
 struct as3722_pctrl_info *as_pci = pinctrl_dev_get_drvdata(pctldev);

 if (as_pci->gpio_control[offset].io_function)
  return -EBUSY;
 return 0;
}
