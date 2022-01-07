
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t hwirq; } ;
struct atmel_pioctrl {struct atmel_pin** pins; } ;
struct atmel_pin {int bank; int line; } ;


 int ATMEL_PIO_CFGR ;
 unsigned int ATMEL_PIO_CFGR_EVTSEL_BOTH ;
 unsigned int ATMEL_PIO_CFGR_EVTSEL_FALLING ;
 unsigned int ATMEL_PIO_CFGR_EVTSEL_HIGH ;
 unsigned int ATMEL_PIO_CFGR_EVTSEL_LOW ;
 unsigned int ATMEL_PIO_CFGR_EVTSEL_MASK ;
 unsigned int ATMEL_PIO_CFGR_EVTSEL_RISING ;
 int ATMEL_PIO_MSKR ;
 unsigned int BIT (int ) ;
 int EINVAL ;






 unsigned int atmel_gpio_read (struct atmel_pioctrl*,int ,int ) ;
 int atmel_gpio_write (struct atmel_pioctrl*,int ,int ,unsigned int) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct atmel_pioctrl* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;

__attribute__((used)) static int atmel_gpio_irq_set_type(struct irq_data *d, unsigned type)
{
 struct atmel_pioctrl *atmel_pioctrl = irq_data_get_irq_chip_data(d);
 struct atmel_pin *pin = atmel_pioctrl->pins[d->hwirq];
 unsigned reg;

 atmel_gpio_write(atmel_pioctrl, pin->bank, ATMEL_PIO_MSKR,
    BIT(pin->line));
 reg = atmel_gpio_read(atmel_pioctrl, pin->bank, ATMEL_PIO_CFGR);
 reg &= (~ATMEL_PIO_CFGR_EVTSEL_MASK);

 switch (type) {
 case 131:
  irq_set_handler_locked(d, handle_edge_irq);
  reg |= ATMEL_PIO_CFGR_EVTSEL_RISING;
  break;
 case 132:
  irq_set_handler_locked(d, handle_edge_irq);
  reg |= ATMEL_PIO_CFGR_EVTSEL_FALLING;
  break;
 case 133:
  irq_set_handler_locked(d, handle_edge_irq);
  reg |= ATMEL_PIO_CFGR_EVTSEL_BOTH;
  break;
 case 129:
  irq_set_handler_locked(d, handle_level_irq);
  reg |= ATMEL_PIO_CFGR_EVTSEL_LOW;
  break;
 case 130:
  irq_set_handler_locked(d, handle_level_irq);
  reg |= ATMEL_PIO_CFGR_EVTSEL_HIGH;
  break;
 case 128:
 default:
  return -EINVAL;
 }

 atmel_gpio_write(atmel_pioctrl, pin->bank, ATMEL_PIO_CFGR, reg);

 return 0;
}
