
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {size_t line; int dev; int uartclk; } ;
struct sprd_uart_port {struct clk* clk; } ;
struct clk {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int SPRD_DEFAULT_SOURCE_CLK ;
 int clk_get_rate (struct clk*) ;
 scalar_t__ clk_set_parent (struct clk*,struct clk*) ;
 int dev_warn (int ,char*,size_t) ;
 void* devm_clk_get (int ,char*) ;
 struct sprd_uart_port** sprd_port ;
 int sprd_uart_is_console (struct uart_port*) ;

__attribute__((used)) static int sprd_clk_init(struct uart_port *uport)
{
 struct clk *clk_uart, *clk_parent;
 struct sprd_uart_port *u = sprd_port[uport->line];

 clk_uart = devm_clk_get(uport->dev, "uart");
 if (IS_ERR(clk_uart)) {
  dev_warn(uport->dev, "uart%d can't get uart clock\n",
    uport->line);
  clk_uart = ((void*)0);
 }

 clk_parent = devm_clk_get(uport->dev, "source");
 if (IS_ERR(clk_parent)) {
  dev_warn(uport->dev, "uart%d can't get source clock\n",
    uport->line);
  clk_parent = ((void*)0);
 }

 if (!clk_uart || clk_set_parent(clk_uart, clk_parent))
  uport->uartclk = SPRD_DEFAULT_SOURCE_CLK;
 else
  uport->uartclk = clk_get_rate(clk_uart);

 u->clk = devm_clk_get(uport->dev, "enable");
 if (IS_ERR(u->clk)) {
  if (PTR_ERR(u->clk) == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  dev_warn(uport->dev, "uart%d can't get enable clock\n",
   uport->line);


  if (!sprd_uart_is_console(uport))
   return PTR_ERR(u->clk);

  u->clk = ((void*)0);
 }

 return 0;
}
