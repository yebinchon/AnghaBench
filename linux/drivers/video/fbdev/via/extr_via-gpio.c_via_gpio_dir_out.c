
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int via_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int via_gpio_dir_out(struct gpio_chip *chip, unsigned int nr,
       int value)
{
 via_gpio_set(chip, nr, value);
 return 0;
}
