
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; int irq; } ;


 int ENODEV ;
 int asc_enable_rx_interrupts (struct uart_port*) ;
 int asc_interrupt ;
 int asc_port_name (struct uart_port*) ;
 int asc_transmit_chars (struct uart_port*) ;
 int dev_err (int ,char*) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct uart_port*) ;

__attribute__((used)) static int asc_startup(struct uart_port *port)
{
 if (request_irq(port->irq, asc_interrupt, 0,
   asc_port_name(port), port)) {
  dev_err(port->dev, "cannot allocate irq.\n");
  return -ENODEV;
 }

 asc_transmit_chars(port);
 asc_enable_rx_interrupts(port);

 return 0;
}
