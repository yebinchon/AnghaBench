
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int orderly_poweroff (int) ;

__attribute__((used)) static irqreturn_t fsl_hv_shutdown_isr(int irq, void *data)
{
 orderly_poweroff(0);

 return IRQ_HANDLED;
}
