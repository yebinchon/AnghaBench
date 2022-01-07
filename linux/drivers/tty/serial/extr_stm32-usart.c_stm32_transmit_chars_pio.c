
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tx; } ;
struct uart_port {TYPE_3__ icount; scalar_t__ membase; TYPE_2__* state; } ;
struct stm32_usart_offsets {scalar_t__ tdr; scalar_t__ isr; int cr3; } ;
struct stm32_port {int tx_dma_busy; TYPE_1__* info; } ;
struct circ_buf {size_t tail; int * buf; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;
struct TYPE_4__ {struct stm32_usart_offsets ofs; } ;


 int UART_XMIT_SIZE ;
 int USART_CR3_DMAT ;
 int USART_SR_TXE ;
 int readl_relaxed (scalar_t__) ;
 int stm32_clr_bits (struct uart_port*,int ,int ) ;
 int stm32_tx_interrupt_disable (struct uart_port*) ;
 int stm32_tx_interrupt_enable (struct uart_port*) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_transmit_chars_pio(struct uart_port *port)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 struct circ_buf *xmit = &port->state->xmit;

 if (stm32_port->tx_dma_busy) {
  stm32_clr_bits(port, ofs->cr3, USART_CR3_DMAT);
  stm32_port->tx_dma_busy = 0;
 }

 while (!uart_circ_empty(xmit)) {

  if (!(readl_relaxed(port->membase + ofs->isr) & USART_SR_TXE))
   break;
  writel_relaxed(xmit->buf[xmit->tail], port->membase + ofs->tdr);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
 }


 if (uart_circ_empty(xmit))
  stm32_tx_interrupt_disable(port);
 else
  stm32_tx_interrupt_enable(port);
}
