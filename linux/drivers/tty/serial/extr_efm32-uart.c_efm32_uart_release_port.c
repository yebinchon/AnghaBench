
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int membase; } ;
struct efm32_uart_port {int clk; } ;


 int clk_put (int ) ;
 int clk_unprepare (int ) ;
 int iounmap (int ) ;
 struct efm32_uart_port* to_efm_port (struct uart_port*) ;

__attribute__((used)) static void efm32_uart_release_port(struct uart_port *port)
{
 struct efm32_uart_port *efm_port = to_efm_port(port);

 clk_unprepare(efm_port->clk);
 clk_put(efm_port->clk);
 iounmap(port->membase);
}
