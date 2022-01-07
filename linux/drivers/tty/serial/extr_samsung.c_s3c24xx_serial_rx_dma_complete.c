
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; TYPE_1__* state; } ;
struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;
struct s3c24xx_uart_port {struct uart_port port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {int rx_bytes_requested; int rx_desc; int rx_cookie; int rx_chan; } ;
struct dma_tx_state {int residue; } ;
struct TYPE_2__ {struct tty_port port; } ;


 int async_tx_ack (int ) ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 int s3c24xx_uart_copy_rx_to_tty (struct s3c24xx_uart_port*,struct tty_port*,int) ;
 int s3c64xx_start_rx_dma (struct s3c24xx_uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (struct tty_port*) ;

__attribute__((used)) static void s3c24xx_serial_rx_dma_complete(void *args)
{
 struct s3c24xx_uart_port *ourport = args;
 struct uart_port *port = &ourport->port;

 struct s3c24xx_uart_dma *dma = ourport->dma;
 struct tty_port *t = &port->state->port;
 struct tty_struct *tty = tty_port_tty_get(&ourport->port.state->port);

 struct dma_tx_state state;
 unsigned long flags;
 int received;

 dmaengine_tx_status(dma->rx_chan, dma->rx_cookie, &state);
 received = dma->rx_bytes_requested - state.residue;
 async_tx_ack(dma->rx_desc);

 spin_lock_irqsave(&port->lock, flags);

 if (received)
  s3c24xx_uart_copy_rx_to_tty(ourport, t, received);

 if (tty) {
  tty_flip_buffer_push(t);
  tty_kref_put(tty);
 }

 s3c64xx_start_rx_dma(ourport);

 spin_unlock_irqrestore(&port->lock, flags);
}
