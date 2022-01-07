
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int samsung_pinmux_setup (struct pinctrl_dev*,unsigned int,unsigned int) ;

__attribute__((used)) static int samsung_pinmux_set_mux(struct pinctrl_dev *pctldev,
      unsigned selector,
      unsigned group)
{
 samsung_pinmux_setup(pctldev, selector, group);
 return 0;
}
