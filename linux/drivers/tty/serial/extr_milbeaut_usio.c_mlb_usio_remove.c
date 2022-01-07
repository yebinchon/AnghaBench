
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {struct clk* private_data; } ;
struct platform_device {size_t id; } ;
struct clk {int dummy; } ;


 int clk_disable_unprepare (struct clk*) ;
 struct uart_port* mlb_usio_ports ;
 int mlb_usio_uart_driver ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int mlb_usio_remove(struct platform_device *pdev)
{
 struct uart_port *port = &mlb_usio_ports[pdev->id];
 struct clk *clk = port->private_data;

 uart_remove_one_port(&mlb_usio_uart_driver, port);
 clk_disable_unprepare(clk);

 return 0;
}
