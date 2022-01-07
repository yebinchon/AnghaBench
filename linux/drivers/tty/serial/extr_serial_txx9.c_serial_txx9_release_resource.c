
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iotype; int flags; int iobase; int mapbase; int * membase; } ;
struct uart_txx9_port {TYPE_1__ port; } ;


 unsigned int TXX9_REGION_SIZE ;
 int UPF_IOREMAP ;

 int iounmap (int *) ;
 int release_mem_region (int ,unsigned int) ;
 int release_region (int ,unsigned int) ;

__attribute__((used)) static void serial_txx9_release_resource(struct uart_txx9_port *up)
{
 unsigned int size = TXX9_REGION_SIZE;

 switch (up->port.iotype) {
 default:
  if (!up->port.mapbase)
   break;

  if (up->port.flags & UPF_IOREMAP) {
   iounmap(up->port.membase);
   up->port.membase = ((void*)0);
  }

  release_mem_region(up->port.mapbase, size);
  break;

 case 128:
  release_region(up->port.iobase, size);
  break;
 }
}
