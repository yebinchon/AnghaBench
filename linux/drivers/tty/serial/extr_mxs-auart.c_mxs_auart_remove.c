
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {size_t id; } ;
struct mxs_auart_port {int clk_ahb; int clk; int port; } ;


 int auart_driver ;
 int ** auart_port ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ is_asm9260_auart (struct mxs_auart_port*) ;
 int mxs_auart_free_gpio_irq (struct mxs_auart_port*) ;
 struct mxs_auart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int mxs_auart_remove(struct platform_device *pdev)
{
 struct mxs_auart_port *s = platform_get_drvdata(pdev);

 uart_remove_one_port(&auart_driver, &s->port);
 auart_port[pdev->id] = ((void*)0);
 mxs_auart_free_gpio_irq(s);
 if (is_asm9260_auart(s)) {
  clk_disable_unprepare(s->clk);
  clk_disable_unprepare(s->clk_ahb);
 }

 return 0;
}
