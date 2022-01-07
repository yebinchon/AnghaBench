
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; scalar_t__ irq; } ;
struct serial_struct {scalar_t__ irq; } ;


 int EINVAL ;
 scalar_t__ PORT_RDA ;

__attribute__((used)) static int rda_uart_verify_port(struct uart_port *port,
    struct serial_struct *ser)
{
 if (port->type != PORT_RDA)
  return -EINVAL;

 if (port->irq != ser->irq)
  return -EINVAL;

 return 0;
}
