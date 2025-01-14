
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {int lock; TYPE_2__ icount; int dev; TYPE_1__* state; } ;
struct s3c24xx_uart_port {scalar_t__ tx_in_progress; struct uart_port port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {int tx_bytes_requested; int tx_size; int tx_transfer_addr; int tx_desc; int tx_cookie; int tx_chan; } ;
struct dma_tx_state {int residue; } ;
struct circ_buf {int tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int DMA_TO_DEVICE ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int async_tx_ack (int ) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 int s3c24xx_serial_start_next_tx (struct s3c24xx_uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void s3c24xx_serial_tx_dma_complete(void *args)
{
 struct s3c24xx_uart_port *ourport = args;
 struct uart_port *port = &ourport->port;
 struct circ_buf *xmit = &port->state->xmit;
 struct s3c24xx_uart_dma *dma = ourport->dma;
 struct dma_tx_state state;
 unsigned long flags;
 int count;


 dmaengine_tx_status(dma->tx_chan, dma->tx_cookie, &state);
 count = dma->tx_bytes_requested - state.residue;
 async_tx_ack(dma->tx_desc);

 dma_sync_single_for_cpu(ourport->port.dev, dma->tx_transfer_addr,
    dma->tx_size, DMA_TO_DEVICE);

 spin_lock_irqsave(&port->lock, flags);

 xmit->tail = (xmit->tail + count) & (UART_XMIT_SIZE - 1);
 port->icount.tx += count;
 ourport->tx_in_progress = 0;

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 s3c24xx_serial_start_next_tx(ourport);
 spin_unlock_irqrestore(&port->lock, flags);
}
