
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int ngpio; scalar_t__ base; int owner; int parent; int label; int to_irq; int set; int direction_output; int get; int direction_input; int free; int request; } ;
struct sh_pfc_chip {int * pins; struct gpio_chip gpio_chip; struct sh_pfc* pfc; } ;
struct sh_pfc {int nr_gpio_pins; int dev; TYPE_1__* info; } ;
struct TYPE_2__ {int name; int nr_pins; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int * devm_kcalloc (int ,int ,int,int ) ;
 int gpio_pin_direction_input ;
 int gpio_pin_direction_output ;
 int gpio_pin_free ;
 int gpio_pin_get ;
 int gpio_pin_request ;
 int gpio_pin_set ;
 int gpio_pin_to_irq ;
 int gpio_setup_data_regs (struct sh_pfc_chip*) ;

__attribute__((used)) static int gpio_pin_setup(struct sh_pfc_chip *chip)
{
 struct sh_pfc *pfc = chip->pfc;
 struct gpio_chip *gc = &chip->gpio_chip;
 int ret;

 chip->pins = devm_kcalloc(pfc->dev,
      pfc->info->nr_pins, sizeof(*chip->pins),
      GFP_KERNEL);
 if (chip->pins == ((void*)0))
  return -ENOMEM;

 ret = gpio_setup_data_regs(chip);
 if (ret < 0)
  return ret;

 gc->request = gpio_pin_request;
 gc->free = gpio_pin_free;
 gc->direction_input = gpio_pin_direction_input;
 gc->get = gpio_pin_get;
 gc->direction_output = gpio_pin_direction_output;
 gc->set = gpio_pin_set;
 gc->to_irq = gpio_pin_to_irq;

 gc->label = pfc->info->name;
 gc->parent = pfc->dev;
 gc->owner = THIS_MODULE;
 gc->base = 0;
 gc->ngpio = pfc->nr_gpio_pins;

 return 0;
}
