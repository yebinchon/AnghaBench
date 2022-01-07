
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 unsigned int ARRAY_SIZE (char**) ;
 char** bcm2835_gpio_groups ;

__attribute__((used)) static int bcm2835_pmx_get_function_groups(struct pinctrl_dev *pctldev,
  unsigned selector,
  const char * const **groups,
  unsigned * const num_groups)
{

 *groups = bcm2835_gpio_groups;
 *num_groups = ARRAY_SIZE(bcm2835_gpio_groups);

 return 0;
}
