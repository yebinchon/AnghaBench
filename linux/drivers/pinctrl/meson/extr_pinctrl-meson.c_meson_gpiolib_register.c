
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; int can_sleep; int of_gpio_n_cells; int of_node; int ngpio; int set; int get; int direction_output; int direction_input; int free; int request; int parent; int label; } ;
struct meson_pinctrl {TYPE_1__* data; int dev; TYPE_2__ chip; int of_node; } ;
struct TYPE_3__ {int name; int num_pins; } ;


 int dev_err (int ,char*,int ) ;
 int gpiochip_add_data (TYPE_2__*,struct meson_pinctrl*) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int meson_gpio_direction_input ;
 int meson_gpio_direction_output ;
 int meson_gpio_get ;
 int meson_gpio_set ;

__attribute__((used)) static int meson_gpiolib_register(struct meson_pinctrl *pc)
{
 int ret;

 pc->chip.label = pc->data->name;
 pc->chip.parent = pc->dev;
 pc->chip.request = gpiochip_generic_request;
 pc->chip.free = gpiochip_generic_free;
 pc->chip.direction_input = meson_gpio_direction_input;
 pc->chip.direction_output = meson_gpio_direction_output;
 pc->chip.get = meson_gpio_get;
 pc->chip.set = meson_gpio_set;
 pc->chip.base = -1;
 pc->chip.ngpio = pc->data->num_pins;
 pc->chip.can_sleep = 0;
 pc->chip.of_node = pc->of_node;
 pc->chip.of_gpio_n_cells = 2;

 ret = gpiochip_add_data(&pc->chip, pc);
 if (ret) {
  dev_err(pc->dev, "can't add gpio chip %s\n",
   pc->data->name);
  return ret;
 }

 return 0;
}
