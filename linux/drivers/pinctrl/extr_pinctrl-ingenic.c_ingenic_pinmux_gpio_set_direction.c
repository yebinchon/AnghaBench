
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dev; } ;
struct ingenic_pinctrl {scalar_t__ version; } ;


 int GPIO_MSK ;
 scalar_t__ ID_JZ4760 ;
 scalar_t__ ID_X1000 ;
 int JZ4740_GPIO_DIR ;
 int JZ4740_GPIO_FUNC ;
 int JZ4740_GPIO_SELECT ;
 int JZ4760_GPIO_INT ;
 int JZ4760_GPIO_PAT1 ;
 unsigned int PINS_PER_GPIO_CHIP ;
 int dev_dbg (int ,char*,char,unsigned int,char*) ;
 int ingenic_config_pin (struct ingenic_pinctrl*,unsigned int,int ,int) ;
 int ingenic_shadow_config_pin (struct ingenic_pinctrl*,unsigned int,int ,int) ;
 int ingenic_shadow_config_pin_load (struct ingenic_pinctrl*,unsigned int) ;
 struct ingenic_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ingenic_pinmux_gpio_set_direction(struct pinctrl_dev *pctldev,
  struct pinctrl_gpio_range *range,
  unsigned int pin, bool input)
{
 struct ingenic_pinctrl *jzpc = pinctrl_dev_get_drvdata(pctldev);
 unsigned int idx = pin % PINS_PER_GPIO_CHIP;
 unsigned int offt = pin / PINS_PER_GPIO_CHIP;

 dev_dbg(pctldev->dev, "set pin P%c%u to %sput\n",
   'A' + offt, idx, input ? "in" : "out");

 if (jzpc->version >= ID_X1000) {
  ingenic_shadow_config_pin(jzpc, pin, JZ4760_GPIO_INT, 0);
  ingenic_shadow_config_pin(jzpc, pin, GPIO_MSK, 1);
  ingenic_shadow_config_pin(jzpc, pin, JZ4760_GPIO_PAT1, input);
  ingenic_shadow_config_pin_load(jzpc, pin);
 } else if (jzpc->version >= ID_JZ4760) {
  ingenic_config_pin(jzpc, pin, JZ4760_GPIO_INT, 0);
  ingenic_config_pin(jzpc, pin, GPIO_MSK, 1);
  ingenic_config_pin(jzpc, pin, JZ4760_GPIO_PAT1, input);
 } else {
  ingenic_config_pin(jzpc, pin, JZ4740_GPIO_SELECT, 0);
  ingenic_config_pin(jzpc, pin, JZ4740_GPIO_DIR, !input);
  ingenic_config_pin(jzpc, pin, JZ4740_GPIO_FUNC, 0);
 }

 return 0;
}
