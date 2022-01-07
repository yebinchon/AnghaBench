
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_pioctrl {scalar_t__ reg_base; } ;


 unsigned int ATMEL_PIO_BANK_OFFSET ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void atmel_gpio_write(struct atmel_pioctrl *atmel_pioctrl,
        unsigned int bank, unsigned int reg,
        unsigned int val)
{
 writel_relaxed(val, atmel_pioctrl->reg_base
         + ATMEL_PIO_BANK_OFFSET * bank + reg);
}
