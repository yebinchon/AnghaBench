
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dev; } ;


 int ENOTSUPP ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int tegra_pinconf_set(struct pinctrl_dev *pctldev,
        unsigned pin, unsigned long *configs,
        unsigned num_configs)
{
 dev_err(pctldev->dev, "pin_config_set op not supported\n");
 return -ENOTSUPP;
}
