
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;
struct dz_port {int dummy; } ;


 int PORT_DZ ;
 int UART_CONFIG_TYPE ;
 scalar_t__ dz_request_port (struct uart_port*) ;
 int dz_reset (struct dz_port*) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_config_port(struct uart_port *uport, int flags)
{
 struct dz_port *dport = to_dport(uport);

 if (flags & UART_CONFIG_TYPE) {
  if (dz_request_port(uport))
   return;

  uport->type = PORT_DZ;

  dz_reset(dport);
 }
}
