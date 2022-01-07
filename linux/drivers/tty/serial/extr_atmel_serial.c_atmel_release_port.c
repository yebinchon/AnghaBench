
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int * membase; int mapbase; TYPE_1__* dev; } ;
struct platform_device {int resource; } ;
struct TYPE_2__ {int parent; } ;


 int UPF_IOREMAP ;
 int iounmap (int *) ;
 int release_mem_region (int ,int) ;
 int resource_size (int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void atmel_release_port(struct uart_port *port)
{
 struct platform_device *mpdev = to_platform_device(port->dev->parent);
 int size = resource_size(mpdev->resource);

 release_mem_region(port->mapbase, size);

 if (port->flags & UPF_IOREMAP) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }
}
