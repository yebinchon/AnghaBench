
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int spear_pinctrl_endisable (struct pinctrl_dev*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int spear_pinctrl_set_mux(struct pinctrl_dev *pctldev, unsigned function,
  unsigned group)
{
 return spear_pinctrl_endisable(pctldev, function, group, 1);
}
