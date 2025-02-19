
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct ltq_uart_port {int common_irq; } ;


 int dev_err (int ,char*) ;
 int lqasc_irq ;
 int request_irq (int ,int ,int ,char*,struct uart_port*) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;

__attribute__((used)) static int request_irq_intel(struct uart_port *port)
{
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);
 int retval;

 retval = request_irq(ltq_port->common_irq, lqasc_irq, 0,
        "asc_irq", port);
 if (retval)
  dev_err(port->dev, "failed to request asc_irq\n");

 return retval;
}
