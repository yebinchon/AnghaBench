
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct uart_port {int line; } ;


 scalar_t__ sccnxp_read (struct uart_port*,scalar_t__) ;

__attribute__((used)) static u8 sccnxp_port_read(struct uart_port *port, u8 reg)
{
 return sccnxp_read(port, (port->line << 3) + reg);
}
