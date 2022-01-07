
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ irq; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; } ;


 int EINVAL ;
 scalar_t__ PORT_UNKNOWN ;
 scalar_t__ PORT_VT8500 ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vt8500_verify_port(struct uart_port *port,
         struct serial_struct *ser)
{
 if (unlikely(ser->type != PORT_UNKNOWN && ser->type != PORT_VT8500))
  return -EINVAL;
 if (unlikely(port->irq != ser->irq))
  return -EINVAL;
 return 0;
}
