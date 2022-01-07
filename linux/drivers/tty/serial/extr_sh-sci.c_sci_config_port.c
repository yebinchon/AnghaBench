
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int type; } ;
struct sci_port {TYPE_1__* cfg; } ;
struct TYPE_2__ {int type; } ;


 int UART_CONFIG_TYPE ;
 int sci_request_port (struct uart_port*) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static void sci_config_port(struct uart_port *port, int flags)
{
 if (flags & UART_CONFIG_TYPE) {
  struct sci_port *sport = to_sci_port(port);

  port->type = sport->cfg->type;
  sci_request_port(port);
 }
}
