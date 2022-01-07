
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;
struct tegra_uart_port {int dummy; } ;


 int free_irq (int ,struct tegra_uart_port*) ;
 int tegra_uart_hw_deinit (struct tegra_uart_port*) ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;

__attribute__((used)) static void tegra_uart_shutdown(struct uart_port *u)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);

 tegra_uart_hw_deinit(tup);
 free_irq(u->irq, tup);
}
