
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int samsung_pinconf_rw (struct pinctrl_dev*,unsigned int,unsigned long*,int) ;

__attribute__((used)) static int samsung_pinconf_get(struct pinctrl_dev *pctldev, unsigned int pin,
     unsigned long *config)
{
 return samsung_pinconf_rw(pctldev, pin, config, 0);
}
