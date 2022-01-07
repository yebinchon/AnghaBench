
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ irq; scalar_t__ iobase; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; scalar_t__ io_type; scalar_t__ port; scalar_t__ hub6; } ;


 int EINVAL ;
 scalar_t__ PORT_UNKNOWN ;
 scalar_t__ PORT_XUARTPS ;
 scalar_t__ UPIO_MEM ;

__attribute__((used)) static int cdns_uart_verify_port(struct uart_port *port,
     struct serial_struct *ser)
{
 if (ser->type != PORT_UNKNOWN && ser->type != PORT_XUARTPS)
  return -EINVAL;
 if (port->irq != ser->irq)
  return -EINVAL;
 if (ser->io_type != UPIO_MEM)
  return -EINVAL;
 if (port->iobase != ser->port)
  return -EINVAL;
 if (ser->hub6 != 0)
  return -EINVAL;
 return 0;
}
