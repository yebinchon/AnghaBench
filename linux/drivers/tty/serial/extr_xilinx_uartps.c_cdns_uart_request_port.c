
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; int dev; int membase; } ;


 int CDNS_UART_NAME ;
 int CDNS_UART_REGISTER_SPACE ;
 int ENOMEM ;
 int dev_err (int ,char*) ;
 int ioremap (int ,int ) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;

__attribute__((used)) static int cdns_uart_request_port(struct uart_port *port)
{
 if (!request_mem_region(port->mapbase, CDNS_UART_REGISTER_SPACE,
      CDNS_UART_NAME)) {
  return -ENOMEM;
 }

 port->membase = ioremap(port->mapbase, CDNS_UART_REGISTER_SPACE);
 if (!port->membase) {
  dev_err(port->dev, "Unable to map registers\n");
  release_mem_region(port->mapbase, CDNS_UART_REGISTER_SPACE);
  return -ENOMEM;
 }
 return 0;
}
