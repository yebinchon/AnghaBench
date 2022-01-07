
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_pinctrl {scalar_t__ version; int dev; } ;


 int GPIO_MSK ;
 scalar_t__ ID_JZ4760 ;
 scalar_t__ ID_X1000 ;
 int JZ4740_GPIO_FUNC ;
 int JZ4740_GPIO_SELECT ;
 int JZ4740_GPIO_TRIG ;
 int JZ4760_GPIO_INT ;
 int JZ4760_GPIO_PAT0 ;
 int JZ4760_GPIO_PAT1 ;
 int PINS_PER_GPIO_CHIP ;
 int dev_dbg (int ,char*,char,unsigned int,int) ;
 int ingenic_config_pin (struct ingenic_pinctrl*,int,int ,int) ;
 int ingenic_shadow_config_pin (struct ingenic_pinctrl*,int,int ,int) ;
 int ingenic_shadow_config_pin_load (struct ingenic_pinctrl*,int) ;

__attribute__((used)) static int ingenic_pinmux_set_pin_fn(struct ingenic_pinctrl *jzpc,
  int pin, int func)
{
 unsigned int idx = pin % PINS_PER_GPIO_CHIP;
 unsigned int offt = pin / PINS_PER_GPIO_CHIP;

 dev_dbg(jzpc->dev, "set pin P%c%u to function %u\n",
   'A' + offt, idx, func);

 if (jzpc->version >= ID_X1000) {
  ingenic_shadow_config_pin(jzpc, pin, JZ4760_GPIO_INT, 0);
  ingenic_shadow_config_pin(jzpc, pin, GPIO_MSK, 0);
  ingenic_shadow_config_pin(jzpc, pin, JZ4760_GPIO_PAT1, func & 0x2);
  ingenic_shadow_config_pin(jzpc, pin, JZ4760_GPIO_PAT0, func & 0x1);
  ingenic_shadow_config_pin_load(jzpc, pin);
 } else if (jzpc->version >= ID_JZ4760) {
  ingenic_config_pin(jzpc, pin, JZ4760_GPIO_INT, 0);
  ingenic_config_pin(jzpc, pin, GPIO_MSK, 0);
  ingenic_config_pin(jzpc, pin, JZ4760_GPIO_PAT1, func & 0x2);
  ingenic_config_pin(jzpc, pin, JZ4760_GPIO_PAT0, func & 0x1);
 } else {
  ingenic_config_pin(jzpc, pin, JZ4740_GPIO_FUNC, 1);
  ingenic_config_pin(jzpc, pin, JZ4740_GPIO_TRIG, func & 0x2);
  ingenic_config_pin(jzpc, pin, JZ4740_GPIO_SELECT, func > 0);
 }

 return 0;
}
