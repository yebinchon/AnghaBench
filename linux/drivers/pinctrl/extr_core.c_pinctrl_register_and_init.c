
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct pinctrl_desc {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct pinctrl_dev*) ;
 int PTR_ERR (struct pinctrl_dev*) ;
 struct pinctrl_dev* pinctrl_init_controller (struct pinctrl_desc*,struct device*,void*) ;

int pinctrl_register_and_init(struct pinctrl_desc *pctldesc,
         struct device *dev, void *driver_data,
         struct pinctrl_dev **pctldev)
{
 struct pinctrl_dev *p;

 p = pinctrl_init_controller(pctldesc, dev, driver_data);
 if (IS_ERR(p))
  return PTR_ERR(p);







 *pctldev = p;

 return 0;
}
