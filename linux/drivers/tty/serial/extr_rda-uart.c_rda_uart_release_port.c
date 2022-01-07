
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int * membase; int dev; int mapbase; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 int UPF_IOREMAP ;
 int devm_iounmap (int ,int *) ;
 int devm_release_mem_region (int ,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void rda_uart_release_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return;

 if (port->flags & UPF_IOREMAP) {
  devm_release_mem_region(port->dev, port->mapbase,
     resource_size(res));
  devm_iounmap(port->dev, port->membase);
  port->membase = ((void*)0);
 }
}
