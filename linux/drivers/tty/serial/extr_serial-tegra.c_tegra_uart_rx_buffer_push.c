
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct tegra_uart_port {unsigned int rx_bytes_requested; int rx_dma_desc; TYPE_2__ uport; } ;
struct TYPE_3__ {struct tty_port port; } ;


 int async_tx_ack (int ) ;
 int tegra_uart_copy_rx_to_tty (struct tegra_uart_port*,struct tty_port*,unsigned int) ;
 int tegra_uart_handle_rx_pio (struct tegra_uart_port*,struct tty_port*) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (struct tty_port*) ;

__attribute__((used)) static void tegra_uart_rx_buffer_push(struct tegra_uart_port *tup,
          unsigned int residue)
{
 struct tty_port *port = &tup->uport.state->port;
 struct tty_struct *tty = tty_port_tty_get(port);
 unsigned int count;

 async_tx_ack(tup->rx_dma_desc);
 count = tup->rx_bytes_requested - residue;


 tegra_uart_copy_rx_to_tty(tup, port, count);

 tegra_uart_handle_rx_pio(tup, port);
 if (tty) {
  tty_flip_buffer_push(port);
  tty_kref_put(tty);
 }
}
