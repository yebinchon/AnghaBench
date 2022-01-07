
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int samsung_pinconf_rw (struct pinctrl_dev*,unsigned int,unsigned long*,int) ;

__attribute__((used)) static int samsung_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
    unsigned long *configs, unsigned num_configs)
{
 int i, ret;

 for (i = 0; i < num_configs; i++) {
  ret = samsung_pinconf_rw(pctldev, pin, &configs[i], 1);
  if (ret < 0)
   return ret;
 }

 return 0;
}
