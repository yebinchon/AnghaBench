
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int membase; int mapbase; int dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int EBUSY ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int UPF_IOREMAP ;
 int dev_name (int ) ;
 int devm_ioremap_nocache (int ,int ,int ) ;
 int devm_request_mem_region (int ,int ,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int owl_uart_request_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENXIO;

 if (!devm_request_mem_region(port->dev, port->mapbase,
   resource_size(res), dev_name(port->dev)))
  return -EBUSY;

 if (port->flags & UPF_IOREMAP) {
  port->membase = devm_ioremap_nocache(port->dev, port->mapbase,
    resource_size(res));
  if (!port->membase)
   return -EBUSY;
 }

 return 0;
}
