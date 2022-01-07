
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct imx_port {TYPE_1__ port; } ;


 scalar_t__ PORT_IMX ;

__attribute__((used)) static const char *imx_uart_type(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;

 return sport->port.type == PORT_IMX ? "IMX" : ((void*)0);
}
