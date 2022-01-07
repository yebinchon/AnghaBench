
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct device {int dummy; } ;


 int pinctrl_unregister (struct pinctrl_dev*) ;

__attribute__((used)) static void devm_pinctrl_dev_release(struct device *dev, void *res)
{
 struct pinctrl_dev *pctldev = *(struct pinctrl_dev **)res;

 pinctrl_unregister(pctldev);
}
