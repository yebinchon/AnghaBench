
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int mapbase; int * membase; int dev; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 int UPF_IOREMAP ;
 int iounmap (int *) ;
 int platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int) ;
 int resource_size (int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void timbuart_release_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 int size =
  resource_size(platform_get_resource(pdev, IORESOURCE_MEM, 0));

 if (port->flags & UPF_IOREMAP) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }

 release_mem_region(port->mapbase, size);
}
