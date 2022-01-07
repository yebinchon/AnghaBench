
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int abx500_pin_config_get(struct pinctrl_dev *pctldev,
     unsigned pin,
     unsigned long *config)
{
 return -ENOSYS;
}
