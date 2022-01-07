
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {scalar_t__ membase; int lock; } ;
struct stm32_usart_offsets {scalar_t__ isr; scalar_t__ icr; } ;
struct stm32_port {scalar_t__ rx_ch; int tx_ch; TYPE_1__* info; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ UNDEF_REG ;
 int USART_ICR_RTOCF ;
 int USART_ICR_WUCF ;
 int USART_SR_RTOF ;
 int USART_SR_RXNE ;
 int USART_SR_TXE ;
 int USART_SR_WUF ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stm32_receive_chars (struct uart_port*,int) ;
 int stm32_transmit_chars (struct uart_port*) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t stm32_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 u32 sr;

 spin_lock(&port->lock);

 sr = readl_relaxed(port->membase + ofs->isr);

 if ((sr & USART_SR_RTOF) && ofs->icr != UNDEF_REG)
  writel_relaxed(USART_ICR_RTOCF,
          port->membase + ofs->icr);

 if ((sr & USART_SR_WUF) && (ofs->icr != UNDEF_REG))
  writel_relaxed(USART_ICR_WUCF,
          port->membase + ofs->icr);

 if ((sr & USART_SR_RXNE) && !(stm32_port->rx_ch))
  stm32_receive_chars(port, 0);

 if ((sr & USART_SR_TXE) && !(stm32_port->tx_ch))
  stm32_transmit_chars(port);

 spin_unlock(&port->lock);

 if (stm32_port->rx_ch)
  return IRQ_WAKE_THREAD;
 else
  return IRQ_HANDLED;
}
