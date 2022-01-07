
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;



__attribute__((used)) static int da850_pupd_get_group_pins(struct pinctrl_dev *pctldev,
         unsigned int selector,
         const unsigned int **pins,
         unsigned int *num_pins)
{
 *num_pins = 0;

 return 0;
}
