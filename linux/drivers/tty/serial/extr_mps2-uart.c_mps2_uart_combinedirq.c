
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 scalar_t__ mps2_uart_oerrirq (int,void*) ;
 scalar_t__ mps2_uart_rxirq (int,void*) ;
 scalar_t__ mps2_uart_txirq (int,void*) ;

__attribute__((used)) static irqreturn_t mps2_uart_combinedirq(int irq, void *data)
{
 if (mps2_uart_rxirq(irq, data) == IRQ_HANDLED)
  return IRQ_HANDLED;

 if (mps2_uart_txirq(irq, data) == IRQ_HANDLED)
  return IRQ_HANDLED;

 if (mps2_uart_oerrirq(irq, data) == IRQ_HANDLED)
  return IRQ_HANDLED;

 return IRQ_NONE;
}
