
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 struct clk* meson_uart_probe_clock (int *,int *) ;

__attribute__((used)) static int meson_uart_probe_clocks_legacy(struct platform_device *pdev,
       struct uart_port *port)
{
 struct clk *clk = ((void*)0);

 clk = meson_uart_probe_clock(&pdev->dev, ((void*)0));
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 port->uartclk = clk_get_rate(clk);

 return 0;
}
