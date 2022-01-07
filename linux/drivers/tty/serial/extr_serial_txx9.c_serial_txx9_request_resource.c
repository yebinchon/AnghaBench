
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iotype; int flags; int iobase; int mapbase; int membase; } ;
struct uart_txx9_port {TYPE_1__ port; } ;


 int EBUSY ;
 int ENOMEM ;
 unsigned int TXX9_REGION_SIZE ;
 int UPF_IOREMAP ;

 int ioremap (int ,unsigned int) ;
 int release_mem_region (int ,unsigned int) ;
 int request_mem_region (int ,unsigned int,char*) ;
 int request_region (int ,unsigned int,char*) ;

__attribute__((used)) static int serial_txx9_request_resource(struct uart_txx9_port *up)
{
 unsigned int size = TXX9_REGION_SIZE;
 int ret = 0;

 switch (up->port.iotype) {
 default:
  if (!up->port.mapbase)
   break;

  if (!request_mem_region(up->port.mapbase, size, "serial_txx9")) {
   ret = -EBUSY;
   break;
  }

  if (up->port.flags & UPF_IOREMAP) {
   up->port.membase = ioremap(up->port.mapbase, size);
   if (!up->port.membase) {
    release_mem_region(up->port.mapbase, size);
    ret = -ENOMEM;
   }
  }
  break;

 case 128:
  if (!request_region(up->port.iobase, size, "serial_txx9"))
   ret = -EBUSY;
  break;
 }
 return ret;
}
