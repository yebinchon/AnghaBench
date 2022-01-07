
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int * membase; int mapbase; int dev; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int UPF_IOREMAP ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int * devm_ioremap_nocache (int *,int ,int) ;
 struct resource* devm_request_mem_region (int *,int ,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int
lqasc_request_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *res;
 int size;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "cannot obtain I/O memory region");
  return -ENODEV;
 }
 size = resource_size(res);

 res = devm_request_mem_region(&pdev->dev, res->start,
  size, dev_name(&pdev->dev));
 if (!res) {
  dev_err(&pdev->dev, "cannot request I/O memory region");
  return -EBUSY;
 }

 if (port->flags & UPF_IOREMAP) {
  port->membase = devm_ioremap_nocache(&pdev->dev,
   port->mapbase, size);
  if (port->membase == ((void*)0))
   return -ENOMEM;
 }
 return 0;
}
