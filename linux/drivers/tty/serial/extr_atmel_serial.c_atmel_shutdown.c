
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int irq; } ;
struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; } ;
struct atmel_uart_port {TYPE_1__ rx_ring; int (* release_tx ) (struct uart_port*) ;int (* release_rx ) (struct uart_port*) ;int tasklet_tx; int tasklet_rx; int uart_timer; int tasklet_shutdown; } ;


 int ATMEL_US_CR ;
 int ATMEL_US_IDR ;
 int ATMEL_US_RSTSTA ;
 int atmel_disable_ms (struct uart_port*) ;
 int atmel_flush_buffer (struct uart_port*) ;
 int atmel_stop_rx (struct uart_port*) ;
 int atmel_stop_tx (struct uart_port*) ;
 int atmel_uart_writel (struct uart_port*,int ,int) ;
 int atomic_inc (int *) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct uart_port*) ;
 int stub1 (struct uart_port*) ;
 int stub2 (struct uart_port*) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_shutdown(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);


 atmel_disable_ms(port);


 atmel_uart_writel(port, ATMEL_US_IDR, -1);


 atomic_inc(&atmel_port->tasklet_shutdown);





 del_timer_sync(&atmel_port->uart_timer);


 synchronize_irq(port->irq);





 tasklet_kill(&atmel_port->tasklet_rx);
 tasklet_kill(&atmel_port->tasklet_tx);





 atmel_stop_rx(port);
 atmel_stop_tx(port);

 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_RSTSTA);




 if (atmel_port->release_rx)
  atmel_port->release_rx(port);
 if (atmel_port->release_tx)
  atmel_port->release_tx(port);




 atmel_port->rx_ring.head = 0;
 atmel_port->rx_ring.tail = 0;




 free_irq(port->irq, port);

 atmel_flush_buffer(port);
}
