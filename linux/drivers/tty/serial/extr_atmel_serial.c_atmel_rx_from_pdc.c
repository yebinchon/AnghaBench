
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int rx; } ;
struct uart_port {int lock; TYPE_2__ icount; int dev; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct atmel_uart_port {int pdc_rx_idx; struct atmel_dma_buffer* pdc_rx; } ;
struct atmel_dma_buffer {unsigned int dma_size; unsigned int dma_addr; unsigned int ofs; scalar_t__ buf; } ;
struct TYPE_3__ {struct tty_port port; } ;


 int ATMEL_PDC_RNCR ;
 int ATMEL_PDC_RNPR ;
 int ATMEL_PDC_RPR ;
 int ATMEL_US_CR ;
 int ATMEL_US_ENDRX ;
 int ATMEL_US_IER ;
 int ATMEL_US_STTTO ;
 int ATMEL_US_TIMEOUT ;
 int DMA_FROM_DEVICE ;
 unsigned int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,int) ;
 int dma_sync_single_for_cpu (int ,unsigned int,unsigned int,int ) ;
 int dma_sync_single_for_device (int ,unsigned int,unsigned int,int ) ;
 scalar_t__ likely (int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_string (struct tty_port*,scalar_t__,unsigned int) ;

__attribute__((used)) static void atmel_rx_from_pdc(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 struct tty_port *tport = &port->state->port;
 struct atmel_dma_buffer *pdc;
 int rx_idx = atmel_port->pdc_rx_idx;
 unsigned int head;
 unsigned int tail;
 unsigned int count;

 do {

  atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_STTTO);

  pdc = &atmel_port->pdc_rx[rx_idx];
  head = atmel_uart_readl(port, ATMEL_PDC_RPR) - pdc->dma_addr;
  tail = pdc->ofs;
  head = min(head, pdc->dma_size);

  if (likely(head != tail)) {
   dma_sync_single_for_cpu(port->dev, pdc->dma_addr,
     pdc->dma_size, DMA_FROM_DEVICE);







   count = head - tail;

   tty_insert_flip_string(tport, pdc->buf + pdc->ofs,
      count);

   dma_sync_single_for_device(port->dev, pdc->dma_addr,
     pdc->dma_size, DMA_FROM_DEVICE);

   port->icount.rx += count;
   pdc->ofs = head;
  }





  if (head >= pdc->dma_size) {
   pdc->ofs = 0;
   atmel_uart_writel(port, ATMEL_PDC_RNPR, pdc->dma_addr);
   atmel_uart_writel(port, ATMEL_PDC_RNCR, pdc->dma_size);

   rx_idx = !rx_idx;
   atmel_port->pdc_rx_idx = rx_idx;
  }
 } while (head >= pdc->dma_size);





 spin_unlock(&port->lock);
 tty_flip_buffer_push(tport);
 spin_lock(&port->lock);

 atmel_uart_writel(port, ATMEL_US_IER,
     ATMEL_US_ENDRX | ATMEL_US_TIMEOUT);
}
