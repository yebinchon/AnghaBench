
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int base; int of_gpio_n_cells; struct device_node* of_node; int ngpio; int set; int get; int direction_output; int direction_input; int free; int request; int parent; int label; } ;
struct device_node {int dummy; } ;
struct dc_pinmap {int dev; int lock; struct gpio_chip chip; } ;


 int DRIVER_NAME ;
 int PINS_COUNT ;
 int dc_gpio_direction_input ;
 int dc_gpio_direction_output ;
 int dc_gpio_get ;
 int dc_gpio_set ;
 int dev_name (int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct dc_pinmap*) ;
 int gpiochip_add_pin_range (struct gpio_chip*,int ,int ,int ,int ) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int gpiochip_remove (struct gpio_chip*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dc_gpiochip_add(struct dc_pinmap *pmap, struct device_node *np)
{
 struct gpio_chip *chip = &pmap->chip;
 int ret;

 chip->label = DRIVER_NAME;
 chip->parent = pmap->dev;
 chip->request = gpiochip_generic_request;
 chip->free = gpiochip_generic_free;
 chip->direction_input = dc_gpio_direction_input;
 chip->direction_output = dc_gpio_direction_output;
 chip->get = dc_gpio_get;
 chip->set = dc_gpio_set;
 chip->base = -1;
 chip->ngpio = PINS_COUNT;
 chip->of_node = np;
 chip->of_gpio_n_cells = 2;

 spin_lock_init(&pmap->lock);

 ret = gpiochip_add_data(chip, pmap);
 if (ret < 0)
  return ret;

 ret = gpiochip_add_pin_range(chip, dev_name(pmap->dev), 0, 0,
         PINS_COUNT);
 if (ret < 0) {
  gpiochip_remove(chip);
  return ret;
 }

 return 0;
}
