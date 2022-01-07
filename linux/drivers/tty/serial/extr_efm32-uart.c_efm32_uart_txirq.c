
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efm32_uart_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UARTn_IF ;
 int UARTn_IFC ;
 int UARTn_IF_TXBL ;
 int UARTn_IF_TXC ;
 int efm32_uart_read32 (struct efm32_uart_port*,int ) ;
 int efm32_uart_tx_chars (struct efm32_uart_port*) ;
 int efm32_uart_write32 (struct efm32_uart_port*,int,int ) ;

__attribute__((used)) static irqreturn_t efm32_uart_txirq(int irq, void *data)
{
 struct efm32_uart_port *efm_port = data;
 u32 irqflag = efm32_uart_read32(efm_port, UARTn_IF);


 if (irqflag & UARTn_IF_TXC)
  efm32_uart_write32(efm_port, UARTn_IF_TXC, UARTn_IFC);

 if (irqflag & (UARTn_IF_TXC | UARTn_IF_TXBL)) {
  efm32_uart_tx_chars(efm_port);
  return IRQ_HANDLED;
 } else
  return IRQ_NONE;
}
