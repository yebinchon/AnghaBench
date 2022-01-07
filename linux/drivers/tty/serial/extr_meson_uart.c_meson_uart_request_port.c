
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int membase; int mapsize; int mapbase; int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int devm_ioremap_nocache (int ,int ,int ) ;
 int devm_request_mem_region (int ,int ,int ,int ) ;

__attribute__((used)) static int meson_uart_request_port(struct uart_port *port)
{
 if (!devm_request_mem_region(port->dev, port->mapbase, port->mapsize,
         dev_name(port->dev))) {
  dev_err(port->dev, "Memory region busy\n");
  return -EBUSY;
 }

 port->membase = devm_ioremap_nocache(port->dev, port->mapbase,
          port->mapsize);
 if (!port->membase)
  return -ENOMEM;

 return 0;
}
