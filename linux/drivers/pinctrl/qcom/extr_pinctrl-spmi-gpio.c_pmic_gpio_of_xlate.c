
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_phandle_args {int* args; } ;
struct gpio_chip {int of_gpio_n_cells; } ;


 int EINVAL ;
 int PMIC_GPIO_PHYSICAL_OFFSET ;

__attribute__((used)) static int pmic_gpio_of_xlate(struct gpio_chip *chip,
         const struct of_phandle_args *gpio_desc,
         u32 *flags)
{
 if (chip->of_gpio_n_cells < 2)
  return -EINVAL;

 if (flags)
  *flags = gpio_desc->args[1];

 return gpio_desc->args[0] - PMIC_GPIO_PHYSICAL_OFFSET;
}
