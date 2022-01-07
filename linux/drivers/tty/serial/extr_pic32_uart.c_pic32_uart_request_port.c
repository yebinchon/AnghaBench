
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; int dev; int membase; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int dev_err (int ,char*) ;
 int devm_ioremap_nocache (int ,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,char*) ;
 int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pic32_uart_request_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *res_mem;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (unlikely(!res_mem))
  return -EINVAL;

 if (!request_mem_region(port->mapbase, resource_size(res_mem),
    "pic32_uart_mem"))
  return -EBUSY;

 port->membase = devm_ioremap_nocache(port->dev, port->mapbase,
      resource_size(res_mem));
 if (!port->membase) {
  dev_err(port->dev, "Unable to map registers\n");
  release_mem_region(port->mapbase, resource_size(res_mem));
  return -ENOMEM;
 }

 return 0;
}
