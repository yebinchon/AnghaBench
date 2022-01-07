
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_MEN_Z135 ;
 int men_z135_request_port (struct uart_port*) ;

__attribute__((used)) static void men_z135_config_port(struct uart_port *port, int type)
{
 port->type = PORT_MEN_Z135;
 men_z135_request_port(port);
}
