
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;
struct sbd_port {int dummy; } ;


 int PORT_SB1250_DUART ;
 int UART_CONFIG_TYPE ;
 int sbd_init_port (struct sbd_port*) ;
 scalar_t__ sbd_request_port (struct uart_port*) ;
 struct sbd_port* to_sport (struct uart_port*) ;

__attribute__((used)) static void sbd_config_port(struct uart_port *uport, int flags)
{
 struct sbd_port *sport = to_sport(uport);

 if (flags & UART_CONFIG_TYPE) {
  if (sbd_request_port(uport))
   return;

  uport->type = PORT_SB1250_DUART;

  sbd_init_port(sport);
 }
}
