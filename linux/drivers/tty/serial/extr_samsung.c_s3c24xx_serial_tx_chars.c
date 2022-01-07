
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tx; } ;
struct uart_port {int fifosize; int lock; TYPE_4__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct s3c24xx_uart_port {int min_dma_size; TYPE_3__* info; TYPE_2__* dma; struct uart_port port; } ;
struct circ_buf {int tail; scalar_t__* buf; int head; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int tx_fifofull; } ;
struct TYPE_6__ {scalar_t__ tx_chan; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;


 int CIRC_CNT_TO_END (int ,int,int) ;
 int IRQ_HANDLED ;
 int S3C2410_UFSTAT ;
 int S3C2410_UTXH ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int dma_get_cache_alignment () ;
 int rd_regl (struct uart_port*,int ) ;
 int s3c24xx_serial_start_tx_dma (struct s3c24xx_uart_port*,int) ;
 int s3c24xx_serial_stop_tx (struct uart_port*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int wr_regb (struct uart_port*,int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
{
 struct s3c24xx_uart_port *ourport = id;
 struct uart_port *port = &ourport->port;
 struct circ_buf *xmit = &port->state->xmit;
 unsigned long flags;
 int count, dma_count = 0;

 spin_lock_irqsave(&port->lock, flags);

 count = CIRC_CNT_TO_END(xmit->head, xmit->tail, UART_XMIT_SIZE);

 if (ourport->dma && ourport->dma->tx_chan &&
     count >= ourport->min_dma_size) {
  int align = dma_get_cache_alignment() -
   (xmit->tail & (dma_get_cache_alignment() - 1));
  if (count-align >= ourport->min_dma_size) {
   dma_count = count-align;
   count = align;
  }
 }

 if (port->x_char) {
  wr_regb(port, S3C2410_UTXH, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  goto out;
 }





 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  s3c24xx_serial_stop_tx(port);
  goto out;
 }



 if (count > port->fifosize) {
  count = port->fifosize;
  dma_count = 0;
 }

 while (!uart_circ_empty(xmit) && count > 0) {
  if (rd_regl(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
   break;

  wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  count--;
 }

 if (!count && dma_count) {
  s3c24xx_serial_start_tx_dma(ourport, dma_count);
  goto out;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS) {
  spin_unlock(&port->lock);
  uart_write_wakeup(port);
  spin_lock(&port->lock);
 }

 if (uart_circ_empty(xmit))
  s3c24xx_serial_stop_tx(port);

out:
 spin_unlock_irqrestore(&port->lock, flags);
 return IRQ_HANDLED;
}
