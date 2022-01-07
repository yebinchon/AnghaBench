
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int EPROBE_DEFER ;
 struct pinctrl_dev* ERR_PTR (int ) ;
 struct pinctrl_dev* get_pinctrl_dev_from_devname (char const*) ;
 int pinctrl_add_gpio_range (struct pinctrl_dev*,struct pinctrl_gpio_range*) ;

struct pinctrl_dev *pinctrl_find_and_add_gpio_range(const char *devname,
  struct pinctrl_gpio_range *range)
{
 struct pinctrl_dev *pctldev;

 pctldev = get_pinctrl_dev_from_devname(devname);






 if (!pctldev) {
  return ERR_PTR(-EPROBE_DEFER);
 }
 pinctrl_add_gpio_range(pctldev, range);

 return pctldev;
}
