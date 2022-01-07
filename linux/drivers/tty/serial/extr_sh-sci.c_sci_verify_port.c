
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct serial_struct {int baud_base; } ;


 int EINVAL ;

__attribute__((used)) static int sci_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 if (ser->baud_base < 2400)

  return -EINVAL;

 return 0;
}
