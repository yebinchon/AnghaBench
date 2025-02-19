
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; scalar_t__ irq; scalar_t__ iotype; unsigned long mapbase; } ;
struct serial_struct {scalar_t__ irq; scalar_t__ io_type; scalar_t__ iomem_base; } ;


 int EINVAL ;
 scalar_t__ PORT_BCM63XX ;

__attribute__((used)) static int bcm_uart_verify_port(struct uart_port *port,
    struct serial_struct *serinfo)
{
 if (port->type != PORT_BCM63XX)
  return -EINVAL;
 if (port->irq != serinfo->irq)
  return -EINVAL;
 if (port->iotype != serinfo->io_type)
  return -EINVAL;
 if (port->mapbase != (unsigned long)serinfo->iomem_base)
  return -EINVAL;
 return 0;
}
