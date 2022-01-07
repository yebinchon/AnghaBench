
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t rx; } ;
struct uart_port {int lock; int dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct dma_tx_state {scalar_t__ residue; } ;
struct dma_chan {int dummy; } ;
struct circ_buf {scalar_t__ head; scalar_t__ tail; scalar_t__ buf; } ;
struct atmel_uart_port {int sg_rx; int tasklet_rx; int cookie_rx; struct dma_chan* chan_rx; struct circ_buf rx_ring; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_3__ {struct tty_port port; } ;


 int ATMEL_US_CR ;
 int ATMEL_US_IER ;
 int ATMEL_US_STTTO ;
 int ATMEL_US_TIMEOUT ;
 int BUG_ON (int) ;
 int DMA_ERROR ;
 int DMA_FROM_DEVICE ;
 int atmel_tasklet_schedule (struct atmel_uart_port*,int *) ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;
 int dev_dbg (int ,char*) ;
 int dma_sync_sg_for_cpu (int ,int *,int,int ) ;
 int dma_sync_sg_for_device (int ,int *,int,int ) ;
 int dmaengine_tx_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 scalar_t__ sg_dma_len (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_string (struct tty_port*,scalar_t__,size_t) ;

__attribute__((used)) static void atmel_rx_from_dma(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 struct tty_port *tport = &port->state->port;
 struct circ_buf *ring = &atmel_port->rx_ring;
 struct dma_chan *chan = atmel_port->chan_rx;
 struct dma_tx_state state;
 enum dma_status dmastat;
 size_t count;



 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_STTTO);
 dmastat = dmaengine_tx_status(chan,
    atmel_port->cookie_rx,
    &state);

 if (dmastat == DMA_ERROR) {
  dev_dbg(port->dev, "Get residue error, restart tasklet\n");
  atmel_uart_writel(port, ATMEL_US_IER, ATMEL_US_TIMEOUT);
  atmel_tasklet_schedule(atmel_port, &atmel_port->tasklet_rx);
  return;
 }


 dma_sync_sg_for_cpu(port->dev,
       &atmel_port->sg_rx,
       1,
       DMA_FROM_DEVICE);
 ring->head = sg_dma_len(&atmel_port->sg_rx) - state.residue;
 BUG_ON(ring->head > sg_dma_len(&atmel_port->sg_rx));
 if (ring->head < ring->tail) {
  count = sg_dma_len(&atmel_port->sg_rx) - ring->tail;

  tty_insert_flip_string(tport, ring->buf + ring->tail, count);
  ring->tail = 0;
  port->icount.rx += count;
 }


 if (ring->tail < ring->head) {
  count = ring->head - ring->tail;

  tty_insert_flip_string(tport, ring->buf + ring->tail, count);

  if (ring->head >= sg_dma_len(&atmel_port->sg_rx))
   ring->head = 0;
  ring->tail = ring->head;
  port->icount.rx += count;
 }


 dma_sync_sg_for_device(port->dev,
          &atmel_port->sg_rx,
          1,
          DMA_FROM_DEVICE);





 spin_unlock(&port->lock);
 tty_flip_buffer_push(tport);
 spin_lock(&port->lock);

 atmel_uart_writel(port, ATMEL_US_IER, ATMEL_US_TIMEOUT);
}
