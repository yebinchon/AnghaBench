
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct uart_port {int line; } ;


 int sccnxp_write (struct uart_port*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void sccnxp_port_write(struct uart_port *port, u8 reg, u8 v)
{
 sccnxp_write(port, (port->line << 3) + reg, v);
}
