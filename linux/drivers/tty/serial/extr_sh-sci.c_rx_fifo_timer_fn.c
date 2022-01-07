
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct timer_list {int dummy; } ;
struct sci_port {struct uart_port port; } ;


 int dev_dbg (int ,char*) ;
 struct sci_port* from_timer (int ,struct timer_list*,int ) ;
 int rx_fifo_timer ;
 struct sci_port* s ;
 int scif_set_rtrg (struct uart_port*,int) ;

__attribute__((used)) static void rx_fifo_timer_fn(struct timer_list *t)
{
 struct sci_port *s = from_timer(s, t, rx_fifo_timer);
 struct uart_port *port = &s->port;

 dev_dbg(port->dev, "Rx timed out\n");
 scif_set_rtrg(port, 1);
}
