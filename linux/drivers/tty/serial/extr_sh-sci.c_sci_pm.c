
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sci_port {int dummy; } ;



 int sci_port_disable (struct sci_port*) ;
 int sci_port_enable (struct sci_port*) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static void sci_pm(struct uart_port *port, unsigned int state,
     unsigned int oldstate)
{
 struct sci_port *sci_port = to_sci_port(port);

 switch (state) {
 case 128:
  sci_port_disable(sci_port);
  break;
 default:
  sci_port_enable(sci_port);
  break;
 }
}
