
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct imx_port {TYPE_1__ port; } ;


 int PORT_IMX ;
 int UART_CONFIG_TYPE ;

__attribute__((used)) static void imx_uart_config_port(struct uart_port *port, int flags)
{
 struct imx_port *sport = (struct imx_port *)port;

 if (flags & UART_CONFIG_TYPE)
  sport->port.type = PORT_IMX;
}
