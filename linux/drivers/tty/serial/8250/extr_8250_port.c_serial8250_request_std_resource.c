
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int iotype; int flags; int iobase; int mapbase; int membase; } ;
struct uart_8250_port {struct uart_port port; } ;


 int EBUSY ;
 int ENOMEM ;
 int UPF_IOREMAP ;
 int ioremap_nocache (int ,unsigned int) ;
 int release_mem_region (int ,unsigned int) ;
 int request_mem_region (int ,unsigned int,char*) ;
 int request_region (int ,unsigned int,char*) ;
 unsigned int serial8250_port_size (struct uart_8250_port*) ;

__attribute__((used)) static int serial8250_request_std_resource(struct uart_8250_port *up)
{
 unsigned int size = serial8250_port_size(up);
 struct uart_port *port = &up->port;
 int ret = 0;

 switch (port->iotype) {
 case 135:
 case 128:
 case 131:
 case 130:
 case 132:
 case 133:
  if (!port->mapbase)
   break;

  if (!request_mem_region(port->mapbase, size, "serial")) {
   ret = -EBUSY;
   break;
  }

  if (port->flags & UPF_IOREMAP) {
   port->membase = ioremap_nocache(port->mapbase, size);
   if (!port->membase) {
    release_mem_region(port->mapbase, size);
    ret = -ENOMEM;
   }
  }
  break;

 case 134:
 case 129:
  if (!request_region(port->iobase, size, "serial"))
   ret = -EBUSY;
  break;
 }
 return ret;
}
