
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ irq; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; } ;


 int EINVAL ;
 scalar_t__ PORT_SC26XX ;
 scalar_t__ PORT_UNKNOWN ;

__attribute__((used)) static int sccnxp_verify_port(struct uart_port *port, struct serial_struct *s)
{
 if ((s->type == PORT_UNKNOWN) || (s->type == PORT_SC26XX))
  return 0;
 if (s->irq == port->irq)
  return 0;

 return -EINVAL;
}
