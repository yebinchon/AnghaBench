
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int tx; } ;
struct uart_port {TYPE_3__ icount; TYPE_2__* state; } ;
struct stm32_usart_offsets {int cr3; } ;
struct stm32_port {int tx_dma_busy; int tx_ch; int tx_dma_buf; int * tx_buf; TYPE_1__* info; } ;
struct dma_async_tx_descriptor {struct uart_port* callback_param; int callback; } ;
struct circ_buf {size_t tail; size_t head; int * buf; } ;
typedef int dma_cookie_t ;
struct TYPE_5__ {struct circ_buf xmit; } ;
struct TYPE_4__ {struct stm32_usart_offsets ofs; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 unsigned int TX_BUF_L ;
 int UART_XMIT_SIZE ;
 int USART_CR3_DMAT ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (int ,int ,unsigned int,int ,int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int memcpy (int *,int *,size_t) ;
 int stm32_set_bits (struct uart_port*,int ,int ) ;
 int stm32_transmit_chars_pio (struct uart_port*) ;
 int stm32_tx_dma_complete ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;
 unsigned int uart_circ_chars_pending (struct circ_buf*) ;

__attribute__((used)) static void stm32_transmit_chars_dma(struct uart_port *port)
{
 struct stm32_port *stm32port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32port->info->ofs;
 struct circ_buf *xmit = &port->state->xmit;
 struct dma_async_tx_descriptor *desc = ((void*)0);
 dma_cookie_t cookie;
 unsigned int count, i;

 if (stm32port->tx_dma_busy)
  return;

 stm32port->tx_dma_busy = 1;

 count = uart_circ_chars_pending(xmit);

 if (count > TX_BUF_L)
  count = TX_BUF_L;

 if (xmit->tail < xmit->head) {
  memcpy(&stm32port->tx_buf[0], &xmit->buf[xmit->tail], count);
 } else {
  size_t one = UART_XMIT_SIZE - xmit->tail;
  size_t two;

  if (one > count)
   one = count;
  two = count - one;

  memcpy(&stm32port->tx_buf[0], &xmit->buf[xmit->tail], one);
  if (two)
   memcpy(&stm32port->tx_buf[one], &xmit->buf[0], two);
 }

 desc = dmaengine_prep_slave_single(stm32port->tx_ch,
        stm32port->tx_dma_buf,
        count,
        DMA_MEM_TO_DEV,
        DMA_PREP_INTERRUPT);

 if (!desc) {
  for (i = count; i > 0; i--)
   stm32_transmit_chars_pio(port);
  return;
 }

 desc->callback = stm32_tx_dma_complete;
 desc->callback_param = port;


 cookie = dmaengine_submit(desc);


 dma_async_issue_pending(stm32port->tx_ch);

 stm32_set_bits(port, ofs->cr3, USART_CR3_DMAT);

 xmit->tail = (xmit->tail + count) & (UART_XMIT_SIZE - 1);
 port->icount.tx += count;
}
