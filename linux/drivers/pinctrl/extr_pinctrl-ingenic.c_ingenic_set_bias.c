
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_pinctrl {scalar_t__ version; } ;


 scalar_t__ ID_JZ4760 ;
 int JZ4740_GPIO_PULL_DIS ;
 int JZ4760_GPIO_PEN ;
 int ingenic_config_pin (struct ingenic_pinctrl*,unsigned int,int ,int) ;

__attribute__((used)) static void ingenic_set_bias(struct ingenic_pinctrl *jzpc,
  unsigned int pin, bool enabled)
{
 if (jzpc->version >= ID_JZ4760)
  ingenic_config_pin(jzpc, pin, JZ4760_GPIO_PEN, !enabled);
 else
  ingenic_config_pin(jzpc, pin, JZ4740_GPIO_PULL_DIS, !enabled);
}
