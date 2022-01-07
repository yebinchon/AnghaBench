
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; int type; } ;


 scalar_t__ ALTERA_JTAGUART_CONTROL_REG ;
 int PORT_ALTERA_JTAGUART ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void altera_jtaguart_config_port(struct uart_port *port, int flags)
{
 port->type = PORT_ALTERA_JTAGUART;


 writel(0, port->membase + ALTERA_JTAGUART_CONTROL_REG);
}
