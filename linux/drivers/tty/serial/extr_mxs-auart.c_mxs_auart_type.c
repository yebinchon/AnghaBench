
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct mxs_auart_port {int dev; } ;


 char const* dev_name (int ) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;

__attribute__((used)) static const char *mxs_auart_type(struct uart_port *u)
{
 struct mxs_auart_port *s = to_auart_port(u);

 return dev_name(s->dev);
}
