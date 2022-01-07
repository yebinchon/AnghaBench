
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int * membase; int mapbase; } ;
struct resource {int start; } ;
struct men_z135_port {struct resource* mem; struct mcb_device* mdev; } ;
struct mcb_device {int dev; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct resource*) ;
 int PTR_ERR (struct resource*) ;
 int dev_name (int *) ;
 int * ioremap (int ,int ) ;
 int mcb_release_mem (struct resource*) ;
 struct resource* mcb_request_mem (struct mcb_device*,int ) ;
 int resource_size (struct resource*) ;
 struct men_z135_port* to_men_z135 (struct uart_port*) ;

__attribute__((used)) static int men_z135_request_port(struct uart_port *port)
{
 struct men_z135_port *uart = to_men_z135(port);
 struct mcb_device *mdev = uart->mdev;
 struct resource *mem;

 mem = mcb_request_mem(uart->mdev, dev_name(&mdev->dev));
 if (IS_ERR(mem))
  return PTR_ERR(mem);

 port->mapbase = mem->start;
 uart->mem = mem;

 port->membase = ioremap(mem->start, resource_size(mem));
 if (port->membase == ((void*)0)) {
  mcb_release_mem(mem);
  return -ENOMEM;
 }

 return 0;
}
