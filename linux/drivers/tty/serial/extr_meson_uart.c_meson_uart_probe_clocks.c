
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
 struct clk* meson_uart_probe_clock (int *,char*) ;

__attribute__((used)) static int meson_uart_probe_clocks(struct platform_device *pdev,
       struct uart_port *port)
{
 struct clk *clk_xtal = ((void*)0);
 struct clk *clk_pclk = ((void*)0);
 struct clk *clk_baud = ((void*)0);

 clk_pclk = meson_uart_probe_clock(&pdev->dev, "pclk");
 if (IS_ERR(clk_pclk))
  return PTR_ERR(clk_pclk);

 clk_xtal = meson_uart_probe_clock(&pdev->dev, "xtal");
 if (IS_ERR(clk_xtal))
  return PTR_ERR(clk_xtal);

 clk_baud = meson_uart_probe_clock(&pdev->dev, "baud");
 if (IS_ERR(clk_baud))
  return PTR_ERR(clk_baud);

 port->uartclk = clk_get_rate(clk_baud);

 return 0;
}
