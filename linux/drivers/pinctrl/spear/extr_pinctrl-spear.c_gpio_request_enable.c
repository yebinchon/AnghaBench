
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int gpio_request_endisable (struct pinctrl_dev*,struct pinctrl_gpio_range*,unsigned int,int) ;

__attribute__((used)) static int gpio_request_enable(struct pinctrl_dev *pctldev,
  struct pinctrl_gpio_range *range, unsigned offset)
{
 return gpio_request_endisable(pctldev, range, offset, 1);
}
