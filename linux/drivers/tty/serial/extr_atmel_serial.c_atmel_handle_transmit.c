
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct atmel_uart_port {unsigned int tx_done_mask; int hd_start_rx; int tasklet_tx; } ;


 int ATMEL_US_CSR ;
 int ATMEL_US_IDR ;
 int ATMEL_US_TXEMPTY ;
 int atmel_start_rx (struct uart_port*) ;
 int atmel_tasklet_schedule (struct atmel_uart_port*,int *) ;
 int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,unsigned int) ;
 int dev_warn (int ,char*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void
atmel_handle_transmit(struct uart_port *port, unsigned int pending)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (pending & atmel_port->tx_done_mask) {
  atmel_uart_writel(port, ATMEL_US_IDR,
      atmel_port->tx_done_mask);


  if (atmel_port->hd_start_rx) {
   if (!(atmel_uart_readl(port, ATMEL_US_CSR)
     & ATMEL_US_TXEMPTY))
    dev_warn(port->dev, "Should start RX, but TX fifo is not empty\n");

   atmel_port->hd_start_rx = 0;
   atmel_start_rx(port);
  }

  atmel_tasklet_schedule(atmel_port, &atmel_port->tasklet_tx);
 }
}
