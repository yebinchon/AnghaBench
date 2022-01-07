
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int ALTERA_UART_CONTROL_REG ;
 int ALTERA_UART_STATUS_REG ;
 int PORT_ALTERA_UART ;
 int altera_uart_writel (struct uart_port*,int ,int ) ;

__attribute__((used)) static void altera_uart_config_port(struct uart_port *port, int flags)
{
 port->type = PORT_ALTERA_UART;


 altera_uart_writel(port, 0, ALTERA_UART_CONTROL_REG);

 altera_uart_writel(port, 0, ALTERA_UART_STATUS_REG);
}
