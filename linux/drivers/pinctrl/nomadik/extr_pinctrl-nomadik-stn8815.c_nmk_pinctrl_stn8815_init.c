
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_pinctrl_soc_data {int dummy; } ;


 struct nmk_pinctrl_soc_data nmk_stn8815_soc ;

void nmk_pinctrl_stn8815_init(const struct nmk_pinctrl_soc_data **soc)
{
 *soc = &nmk_stn8815_soc;
}
