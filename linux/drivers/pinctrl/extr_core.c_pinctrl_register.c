
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct pinctrl_desc {int dummy; } ;
struct device {int dummy; } ;


 struct pinctrl_dev* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct pinctrl_dev*) ;
 int pinctrl_enable (struct pinctrl_dev*) ;
 struct pinctrl_dev* pinctrl_init_controller (struct pinctrl_desc*,struct device*,void*) ;

struct pinctrl_dev *pinctrl_register(struct pinctrl_desc *pctldesc,
        struct device *dev, void *driver_data)
{
 struct pinctrl_dev *pctldev;
 int error;

 pctldev = pinctrl_init_controller(pctldesc, dev, driver_data);
 if (IS_ERR(pctldev))
  return pctldev;

 error = pinctrl_enable(pctldev);
 if (error)
  return ERR_PTR(error);

 return pctldev;

}
