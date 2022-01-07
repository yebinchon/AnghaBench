
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; int baud_base; } ;


 int EINVAL ;
 scalar_t__ NR_IRQS ;
 scalar_t__ PORT_APBUART ;
 scalar_t__ PORT_UNKNOWN ;

__attribute__((used)) static int apbuart_verify_port(struct uart_port *port,
          struct serial_struct *ser)
{
 int ret = 0;
 if (ser->type != PORT_UNKNOWN && ser->type != PORT_APBUART)
  ret = -EINVAL;
 if (ser->irq < 0 || ser->irq >= NR_IRQS)
  ret = -EINVAL;
 if (ser->baud_base < 9600)
  ret = -EINVAL;
 return ret;
}
