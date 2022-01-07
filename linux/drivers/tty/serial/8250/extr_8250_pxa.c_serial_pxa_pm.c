
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {struct pxa8250_data* private_data; } ;
struct pxa8250_data {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static void serial_pxa_pm(struct uart_port *port, unsigned int state,
       unsigned int oldstate)
{
 struct pxa8250_data *data = port->private_data;

 if (!state)
  clk_prepare_enable(data->clk);
 else
  clk_disable_unprepare(data->clk);
}
