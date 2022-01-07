
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
struct serial_struct {int dummy; } ;


 int EINVAL ;
 scalar_t__ PORT_IMX ;
 scalar_t__ PORT_UNKNOWN ;

__attribute__((used)) static int mxs_auart_verify_port(struct uart_port *u,
        struct serial_struct *ser)
{
 if (u->type != PORT_UNKNOWN && u->type != PORT_IMX)
  return -EINVAL;
 return 0;
}
