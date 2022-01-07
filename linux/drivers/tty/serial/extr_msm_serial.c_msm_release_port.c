
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int * membase; int mapbase; int dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int resource_size_t ;


 int IORESOURCE_MEM ;
 int iounmap (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void msm_release_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *uart_resource;
 resource_size_t size;

 uart_resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (unlikely(!uart_resource))
  return;
 size = resource_size(uart_resource);

 release_mem_region(port->mapbase, size);
 iounmap(port->membase);
 port->membase = ((void*)0);
}
