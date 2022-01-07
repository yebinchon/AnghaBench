
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct atmel_pioctrl {struct atmel_pin** pins; } ;
struct atmel_pin {int bank; int line; } ;


 int ATMEL_PIO_CFGR ;
 int ATMEL_PIO_CODR ;
 unsigned int ATMEL_PIO_DIR_MASK ;
 int ATMEL_PIO_MSKR ;
 int ATMEL_PIO_SODR ;
 unsigned int BIT (int ) ;
 unsigned int atmel_gpio_read (struct atmel_pioctrl*,int ,int ) ;
 int atmel_gpio_write (struct atmel_pioctrl*,int ,int ,unsigned int) ;
 struct atmel_pioctrl* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int atmel_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
           int value)
{
 struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);
 struct atmel_pin *pin = atmel_pioctrl->pins[offset];
 unsigned reg;

 atmel_gpio_write(atmel_pioctrl, pin->bank,
    value ? ATMEL_PIO_SODR : ATMEL_PIO_CODR,
    BIT(pin->line));

 atmel_gpio_write(atmel_pioctrl, pin->bank, ATMEL_PIO_MSKR,
    BIT(pin->line));
 reg = atmel_gpio_read(atmel_pioctrl, pin->bank, ATMEL_PIO_CFGR);
 reg |= ATMEL_PIO_DIR_MASK;
 atmel_gpio_write(atmel_pioctrl, pin->bank, ATMEL_PIO_CFGR, reg);

 return 0;
}
