
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sirfsoc_uart_port {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;

__attribute__((used)) static void sirfsoc_uart_pm(struct uart_port *port, unsigned int state,
         unsigned int oldstate)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 if (!state)
  clk_prepare_enable(sirfport->clk);
 else
  clk_disable_unprepare(sirfport->clk);
}
