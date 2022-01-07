
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_MSM ;
 int UART_CONFIG_TYPE ;
 int msm_request_port (struct uart_port*) ;

__attribute__((used)) static void msm_config_port(struct uart_port *port, int flags)
{
 int ret;

 if (flags & UART_CONFIG_TYPE) {
  port->type = PORT_MSM;
  ret = msm_request_port(port);
  if (ret)
   return;
 }
}
