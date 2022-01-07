
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_pinctrl_dev_match ;
 int devm_pinctrl_dev_release ;
 int devres_release (struct device*,int ,int ,struct pinctrl_dev*) ;

void devm_pinctrl_unregister(struct device *dev, struct pinctrl_dev *pctldev)
{
 WARN_ON(devres_release(dev, devm_pinctrl_dev_release,
          devm_pinctrl_dev_match, pctldev));
}
