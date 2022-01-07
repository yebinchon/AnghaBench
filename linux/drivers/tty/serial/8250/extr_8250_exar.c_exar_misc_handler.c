
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int exar_misc_clear (void*) ;

__attribute__((used)) static irqreturn_t exar_misc_handler(int irq, void *data)
{
 exar_misc_clear(data);

 return IRQ_HANDLED;
}
