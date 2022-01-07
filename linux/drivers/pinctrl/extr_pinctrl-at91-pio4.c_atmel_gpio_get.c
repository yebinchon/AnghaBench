
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct atmel_pioctrl {struct atmel_pin** pins; } ;
struct atmel_pin {int line; int bank; } ;


 int ATMEL_PIO_PDSR ;
 unsigned int BIT (int ) ;
 unsigned int atmel_gpio_read (struct atmel_pioctrl*,int ,int ) ;
 struct atmel_pioctrl* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int atmel_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);
 struct atmel_pin *pin = atmel_pioctrl->pins[offset];
 unsigned reg;

 reg = atmel_gpio_read(atmel_pioctrl, pin->bank, ATMEL_PIO_PDSR);

 return !!(reg & BIT(pin->line));
}
