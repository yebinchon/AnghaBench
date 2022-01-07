
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_pfc_chip {struct sh_pfc* pfc; } ;
struct sh_pfc {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct sh_pfc_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static struct sh_pfc *gpio_to_pfc(struct gpio_chip *gc)
{
 struct sh_pfc_chip *chip = gpiochip_get_data(gc);
 return chip->pfc;
}
