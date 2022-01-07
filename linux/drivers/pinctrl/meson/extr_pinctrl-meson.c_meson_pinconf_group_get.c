
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int meson_pinconf_group_get(struct pinctrl_dev *pcdev,
       unsigned int group, unsigned long *config)
{
 return -ENOTSUPP;
}
