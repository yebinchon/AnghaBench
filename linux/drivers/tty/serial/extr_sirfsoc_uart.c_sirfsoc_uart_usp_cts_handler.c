
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct sirfsoc_uart_port {int cts_gpio; scalar_t__ ms_enabled; struct uart_port port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int gpio_get_value (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uart_handle_cts_change (struct uart_port*,int) ;

__attribute__((used)) static irqreturn_t sirfsoc_uart_usp_cts_handler(int irq, void *dev_id)
{
 struct sirfsoc_uart_port *sirfport = (struct sirfsoc_uart_port *)dev_id;
 struct uart_port *port = &sirfport->port;
 spin_lock(&port->lock);
 if (gpio_is_valid(sirfport->cts_gpio) && sirfport->ms_enabled)
  uart_handle_cts_change(port,
    !gpio_get_value(sirfport->cts_gpio));
 spin_unlock(&port->lock);
 return IRQ_HANDLED;
}
