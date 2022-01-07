
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {TYPE_2__* state; } ;
struct s3c24xx_uart_port {unsigned long min_dma_size; TYPE_1__* dma; struct uart_port port; } ;
struct circ_buf {int tail; int head; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;
struct TYPE_3__ {int tx_chan; } ;


 unsigned long CIRC_CNT_TO_END (int ,int,int ) ;
 int UART_XMIT_SIZE ;
 int dma_get_cache_alignment () ;
 int s3c24xx_serial_start_tx_dma (struct s3c24xx_uart_port*,unsigned long) ;
 int s3c24xx_serial_start_tx_pio (struct s3c24xx_uart_port*) ;
 int s3c24xx_serial_stop_tx (struct uart_port*) ;

__attribute__((used)) static void s3c24xx_serial_start_next_tx(struct s3c24xx_uart_port *ourport)
{
 struct uart_port *port = &ourport->port;
 struct circ_buf *xmit = &port->state->xmit;
 unsigned long count;


 count = CIRC_CNT_TO_END(xmit->head, xmit->tail, UART_XMIT_SIZE);

 if (!count) {
  s3c24xx_serial_stop_tx(port);
  return;
 }

 if (!ourport->dma || !ourport->dma->tx_chan ||
     count < ourport->min_dma_size ||
     xmit->tail & (dma_get_cache_alignment() - 1))
  s3c24xx_serial_start_tx_pio(ourport);
 else
  s3c24xx_serial_start_tx_dma(ourport, count);
}
