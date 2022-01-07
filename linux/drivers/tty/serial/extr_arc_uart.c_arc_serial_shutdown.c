
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;


 int free_irq (int ,struct uart_port*) ;

__attribute__((used)) static void arc_serial_shutdown(struct uart_port *port)
{
 free_irq(port->irq, port);
}
