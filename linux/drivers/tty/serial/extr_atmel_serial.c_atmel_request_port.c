
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int mapbase; int * membase; TYPE_1__* dev; } ;
struct platform_device {int resource; } ;
struct TYPE_2__ {int parent; } ;


 int EBUSY ;
 int ENOMEM ;
 int UPF_IOREMAP ;
 int * ioremap (int ,int) ;
 int release_mem_region (int ,int) ;
 int request_mem_region (int ,int,char*) ;
 int resource_size (int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int atmel_request_port(struct uart_port *port)
{
 struct platform_device *mpdev = to_platform_device(port->dev->parent);
 int size = resource_size(mpdev->resource);

 if (!request_mem_region(port->mapbase, size, "atmel_serial"))
  return -EBUSY;

 if (port->flags & UPF_IOREMAP) {
  port->membase = ioremap(port->mapbase, size);
  if (port->membase == ((void*)0)) {
   release_mem_region(port->mapbase, size);
   return -ENOMEM;
  }
 }

 return 0;
}
