
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int iotype; int flags; int iobase; int mapbase; int * membase; } ;
struct uart_8250_port {struct uart_port port; } ;


 int UPF_IOREMAP ;
 int iounmap (int *) ;
 int release_mem_region (int ,unsigned int) ;
 int release_region (int ,unsigned int) ;
 unsigned int serial8250_port_size (struct uart_8250_port*) ;

__attribute__((used)) static void serial8250_release_std_resource(struct uart_8250_port *up)
{
 unsigned int size = serial8250_port_size(up);
 struct uart_port *port = &up->port;

 switch (port->iotype) {
 case 135:
 case 128:
 case 131:
 case 130:
 case 132:
 case 133:
  if (!port->mapbase)
   break;

  if (port->flags & UPF_IOREMAP) {
   iounmap(port->membase);
   port->membase = ((void*)0);
  }

  release_mem_region(port->mapbase, size);
  break;

 case 134:
 case 129:
  release_region(port->iobase, size);
  break;
 }
}
