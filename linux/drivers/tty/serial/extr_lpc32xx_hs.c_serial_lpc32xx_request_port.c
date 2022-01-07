
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ iotype; int flags; scalar_t__ mapbase; int membase; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int MODNAME ;
 int SZ_4K ;
 int UPF_IOREMAP ;
 scalar_t__ UPIO_MEM32 ;
 int ioremap (scalar_t__,int ) ;
 int release_mem_region (scalar_t__,int ) ;
 int request_mem_region (scalar_t__,int ,int ) ;

__attribute__((used)) static int serial_lpc32xx_request_port(struct uart_port *port)
{
 int ret = -ENODEV;

 if ((port->iotype == UPIO_MEM32) && (port->mapbase)) {
  ret = 0;

  if (!request_mem_region(port->mapbase, SZ_4K, MODNAME))
   ret = -EBUSY;
  else if (port->flags & UPF_IOREMAP) {
   port->membase = ioremap(port->mapbase, SZ_4K);
   if (!port->membase) {
    release_mem_region(port->mapbase, SZ_4K);
    ret = -ENOMEM;
   }
  }
 }

 return ret;
}
