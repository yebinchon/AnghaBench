
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t hwirq; } ;
struct atmel_pioctrl {struct atmel_pin** pins; } ;
struct atmel_pin {int line; int bank; } ;


 int ATMEL_PIO_IDR ;
 int BIT (int ) ;
 int atmel_gpio_write (struct atmel_pioctrl*,int ,int ,int ) ;
 struct atmel_pioctrl* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void atmel_gpio_irq_mask(struct irq_data *d)
{
 struct atmel_pioctrl *atmel_pioctrl = irq_data_get_irq_chip_data(d);
 struct atmel_pin *pin = atmel_pioctrl->pins[d->hwirq];

 atmel_gpio_write(atmel_pioctrl, pin->bank, ATMEL_PIO_IDR,
    BIT(pin->line));
}
