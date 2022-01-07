
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int lpc18xx_pins ;

__attribute__((used)) static int lpc18xx_pctl_get_groups_count(struct pinctrl_dev *pctldev)
{
 return ARRAY_SIZE(lpc18xx_pins);
}
