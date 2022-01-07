
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * pcs_bias ;
 int pcs_pinconf_set (struct pinctrl_dev*,unsigned int,unsigned long*,int) ;
 unsigned long pinconf_to_config_packed (int ,int ) ;

__attribute__((used)) static void pcs_pinconf_clear_bias(struct pinctrl_dev *pctldev, unsigned pin)
{
 unsigned long config;
 int i;
 for (i = 0; i < ARRAY_SIZE(pcs_bias); i++) {
  config = pinconf_to_config_packed(pcs_bias[i], 0);
  pcs_pinconf_set(pctldev, pin, &config, 1);
 }
}
