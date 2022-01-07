
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; int irq; } ;


 int EBUSY ;
 int UART_ALL_IRQ_DISABLE (struct uart_port*) ;
 int UART_RX_IRQ_ENABLE (struct uart_port*) ;
 int arc_serial_isr ;
 int dev_warn (int ,char*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct uart_port*) ;

__attribute__((used)) static int arc_serial_startup(struct uart_port *port)
{

 UART_ALL_IRQ_DISABLE(port);

 if (request_irq(port->irq, arc_serial_isr, 0, "arc uart rx-tx", port)) {
  dev_warn(port->dev, "Unable to attach ARC UART intr\n");
  return -EBUSY;
 }

 UART_RX_IRQ_ENABLE(port);

 return 0;
}
