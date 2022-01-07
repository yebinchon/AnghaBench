
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int mapbase; int * membase; } ;


 int UPF_IOREMAP ;
 int iounmap (int *) ;
 int release_mem_region (int ,unsigned long) ;
 unsigned long siu_port_size (struct uart_port*) ;

__attribute__((used)) static void siu_release_port(struct uart_port *port)
{
 unsigned long size;

 if (port->flags & UPF_IOREMAP) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }

 size = siu_port_size(port);
 release_mem_region(port->mapbase, size);
}
