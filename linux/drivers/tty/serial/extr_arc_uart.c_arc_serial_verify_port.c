
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
struct serial_struct {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ PORT_ARC ;
 scalar_t__ PORT_UNKNOWN ;

__attribute__((used)) static int
arc_serial_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 if (port->type != PORT_UNKNOWN && ser->type != PORT_ARC)
  return -EINVAL;

 return 0;
}
