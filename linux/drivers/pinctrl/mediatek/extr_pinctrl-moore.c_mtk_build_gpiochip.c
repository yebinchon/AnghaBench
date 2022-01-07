
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int base; int of_gpio_n_cells; int ngpio; struct device_node* of_node; int set_config; int to_irq; int set; int get; int direction_output; int direction_input; int free; int request; int parent; int label; } ;
struct mtk_pinctrl {int dev; TYPE_1__* soc; struct gpio_chip chip; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int npins; } ;


 int PINCTRL_PINCTRL_DEV ;
 int dev_name (int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct mtk_pinctrl*) ;
 int gpiochip_add_pin_range (struct gpio_chip*,int ,int ,int ,int ) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int gpiochip_remove (struct gpio_chip*) ;
 int mtk_gpio_direction_input ;
 int mtk_gpio_direction_output ;
 int mtk_gpio_get ;
 int mtk_gpio_set ;
 int mtk_gpio_set_config ;
 int mtk_gpio_to_irq ;
 int of_find_property (struct device_node*,char*,int *) ;

__attribute__((used)) static int mtk_build_gpiochip(struct mtk_pinctrl *hw, struct device_node *np)
{
 struct gpio_chip *chip = &hw->chip;
 int ret;

 chip->label = PINCTRL_PINCTRL_DEV;
 chip->parent = hw->dev;
 chip->request = gpiochip_generic_request;
 chip->free = gpiochip_generic_free;
 chip->direction_input = mtk_gpio_direction_input;
 chip->direction_output = mtk_gpio_direction_output;
 chip->get = mtk_gpio_get;
 chip->set = mtk_gpio_set;
 chip->to_irq = mtk_gpio_to_irq,
 chip->set_config = mtk_gpio_set_config,
 chip->base = -1;
 chip->ngpio = hw->soc->npins;
 chip->of_node = np;
 chip->of_gpio_n_cells = 2;

 ret = gpiochip_add_data(chip, hw);
 if (ret < 0)
  return ret;
 if (!of_find_property(np, "gpio-ranges", ((void*)0))) {
  ret = gpiochip_add_pin_range(chip, dev_name(hw->dev), 0, 0,
          chip->ngpio);
  if (ret < 0) {
   gpiochip_remove(chip);
   return ret;
  }
 }

 return 0;
}
