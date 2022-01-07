
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int membase; int dev; int mapbase; } ;
struct TYPE_2__ {int membase; } ;
struct efm32_uart_port {int clk; TYPE_1__ port; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int ,int *) ;
 int clk_prepare (int ) ;
 int clk_put (int ) ;
 int efm_debug (struct efm32_uart_port*,char*) ;
 int ioremap (int ,int) ;
 int iounmap (int ) ;
 struct efm32_uart_port* to_efm_port (struct uart_port*) ;

__attribute__((used)) static int efm32_uart_request_port(struct uart_port *port)
{
 struct efm32_uart_port *efm_port = to_efm_port(port);
 int ret;

 port->membase = ioremap(port->mapbase, 60);
 if (!efm_port->port.membase) {
  ret = -ENOMEM;
  efm_debug(efm_port, "failed to remap\n");
  goto err_ioremap;
 }

 efm_port->clk = clk_get(port->dev, ((void*)0));
 if (IS_ERR(efm_port->clk)) {
  ret = PTR_ERR(efm_port->clk);
  efm_debug(efm_port, "failed to get clock\n");
  goto err_clk_get;
 }

 ret = clk_prepare(efm_port->clk);
 if (ret) {
  clk_put(efm_port->clk);
err_clk_get:

  iounmap(port->membase);
err_ioremap:
  return ret;
 }
 return 0;
}
