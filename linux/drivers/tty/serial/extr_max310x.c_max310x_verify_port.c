
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ irq; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; } ;


 int EINVAL ;
 scalar_t__ PORT_MAX310X ;
 scalar_t__ PORT_UNKNOWN ;

__attribute__((used)) static int max310x_verify_port(struct uart_port *port, struct serial_struct *s)
{
 if ((s->type != PORT_UNKNOWN) && (s->type != PORT_MAX310X))
  return -EINVAL;
 if (s->irq != port->irq)
  return -EINVAL;

 return 0;
}
