
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int iotype; int mapbase; int hub6; int iobase; } ;
int uart_match_port(struct uart_port *port1, struct uart_port *port2)
{
 if (port1->iotype != port2->iotype)
  return 0;

 switch (port1->iotype) {
 case 129:
  return (port1->iobase == port2->iobase);
 case 134:
  return (port1->iobase == port2->iobase) &&
         (port1->hub6 == port2->hub6);
 case 133:
 case 132:
 case 131:
 case 130:
 case 135:
 case 128:
  return (port1->mapbase == port2->mapbase);
 }
 return 0;
}
