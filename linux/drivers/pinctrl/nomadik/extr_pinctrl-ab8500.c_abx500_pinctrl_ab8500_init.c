
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_pinctrl_soc_data {int dummy; } ;


 struct abx500_pinctrl_soc_data ab8500_soc ;

void abx500_pinctrl_ab8500_init(struct abx500_pinctrl_soc_data **soc)
{
 *soc = &ab8500_soc;
}
