
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct atmel_pioctrl {struct atmel_pin** pins; } ;
struct atmel_pin {int line; int bank; } ;


 int ATMEL_PIO_CODR ;
 int ATMEL_PIO_SODR ;
 int BIT (int ) ;
 int atmel_gpio_write (struct atmel_pioctrl*,int ,int ,int ) ;
 struct atmel_pioctrl* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void atmel_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
{
 struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);
 struct atmel_pin *pin = atmel_pioctrl->pins[offset];

 atmel_gpio_write(atmel_pioctrl, pin->bank,
    val ? ATMEL_PIO_SODR : ATMEL_PIO_CODR,
    BIT(pin->line));
}
