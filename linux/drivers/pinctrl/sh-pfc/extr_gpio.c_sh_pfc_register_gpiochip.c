
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sh_pfc_window {scalar_t__ phys; scalar_t__ size; } ;
struct sh_pfc_pin_range {scalar_t__ start; scalar_t__ end; } ;
struct sh_pfc_chip {int gpio_chip; } ;
struct sh_pfc {unsigned int num_windows; scalar_t__ num_irqs; unsigned int nr_ranges; scalar_t__ nr_gpio_pins; TYPE_2__* info; TYPE_3__* dev; struct sh_pfc_pin_range* ranges; struct sh_pfc_chip* gpio; struct sh_pfc_window* windows; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct TYPE_6__ {scalar_t__ gpio_irq_size; scalar_t__ nr_func_gpios; TYPE_1__* data_regs; } ;
struct TYPE_5__ {scalar_t__ reg; } ;


 int CONFIG_OF ;
 int EINVAL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct sh_pfc_chip*) ;
 int PTR_ERR (struct sh_pfc_chip*) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_name (TYPE_3__*) ;
 int gpio_function_setup ;
 int gpio_pin_setup ;
 int gpiochip_add_pin_range (int *,int ,scalar_t__,scalar_t__,scalar_t__) ;
 struct sh_pfc_chip* sh_pfc_add_gpiochip (struct sh_pfc*,int ,struct sh_pfc_window*) ;

int sh_pfc_register_gpiochip(struct sh_pfc *pfc)
{
 struct sh_pfc_chip *chip;
 phys_addr_t address;
 unsigned int i;

 if (pfc->info->data_regs == ((void*)0))
  return 0;






 address = pfc->info->data_regs[0].reg;
 for (i = 0; i < pfc->num_windows; ++i) {
  struct sh_pfc_window *window = &pfc->windows[i];

  if (address >= window->phys &&
      address < window->phys + window->size)
   break;
 }

 if (i == pfc->num_windows)
  return 0;


 if (pfc->num_irqs != pfc->info->gpio_irq_size) {
  dev_err(pfc->dev, "invalid number of IRQ resources\n");
  return -EINVAL;
 }


 chip = sh_pfc_add_gpiochip(pfc, gpio_pin_setup, &pfc->windows[i]);
 if (IS_ERR(chip))
  return PTR_ERR(chip);

 pfc->gpio = chip;

 if (IS_ENABLED(CONFIG_OF) && pfc->dev->of_node)
  return 0;
 return 0;
}
