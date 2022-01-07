
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx; } ;
struct TYPE_5__ {TYPE_1__ icount; TYPE_3__* state; } ;
struct uart_8250_port {TYPE_2__ port; struct uart_8250_dma* dma; } ;
struct uart_8250_dma {int rx_size; int rx_buf; int rx_cookie; int rxchan; scalar_t__ rx_running; } ;
struct tty_port {int dummy; } ;
struct dma_tx_state {int residue; } ;
struct TYPE_6__ {struct tty_port port; } ;


 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_string (struct tty_port*,int ,int) ;

__attribute__((used)) static void __dma_rx_complete(void *param)
{
 struct uart_8250_port *p = param;
 struct uart_8250_dma *dma = p->dma;
 struct tty_port *tty_port = &p->port.state->port;
 struct dma_tx_state state;
 int count;

 dma->rx_running = 0;
 dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);

 count = dma->rx_size - state.residue;

 tty_insert_flip_string(tty_port, dma->rx_buf, count);
 p->port.icount.rx += count;

 tty_flip_buffer_push(tty_port);
}
