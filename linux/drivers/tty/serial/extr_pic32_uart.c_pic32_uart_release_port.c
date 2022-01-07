
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; int dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,unsigned int) ;
 unsigned int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pic32_uart_release_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *res_mem;
 unsigned int res_size;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (unlikely(!res_mem))
  return;
 res_size = resource_size(res_mem);

 release_mem_region(port->mapbase, res_size);
}
