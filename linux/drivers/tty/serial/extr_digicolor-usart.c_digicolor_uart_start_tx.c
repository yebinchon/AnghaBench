
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ UA_INT_ENABLE ;
 int UA_INT_TX ;
 int readb_relaxed (scalar_t__) ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void digicolor_uart_start_tx(struct uart_port *port)
{
 u8 int_enable = readb_relaxed(port->membase + UA_INT_ENABLE);

 int_enable |= UA_INT_TX;
 writeb_relaxed(int_enable, port->membase + UA_INT_ENABLE);
}
