
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;





__attribute__((used)) static inline unsigned long siu_port_size(struct uart_port *port)
{
 switch (port->type) {
 case 128:
  return 11UL;
 case 129:
  return 8UL;
 }

 return 0;
}
