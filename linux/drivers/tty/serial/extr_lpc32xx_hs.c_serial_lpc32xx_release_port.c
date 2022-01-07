
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ iotype; int flags; scalar_t__ mapbase; int * membase; } ;


 int SZ_4K ;
 int UPF_IOREMAP ;
 scalar_t__ UPIO_MEM32 ;
 int iounmap (int *) ;
 int release_mem_region (scalar_t__,int ) ;

__attribute__((used)) static void serial_lpc32xx_release_port(struct uart_port *port)
{
 if ((port->iotype == UPIO_MEM32) && (port->mapbase)) {
  if (port->flags & UPF_IOREMAP) {
   iounmap(port->membase);
   port->membase = ((void*)0);
  }

  release_mem_region(port->mapbase, SZ_4K);
 }
}
