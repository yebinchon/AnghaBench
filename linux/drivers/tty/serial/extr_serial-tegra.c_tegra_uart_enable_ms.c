
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct tegra_uart_port {int ier_shadow; scalar_t__ enable_modem_interrupt; } ;


 int UART_IER ;
 int UART_IER_MSI ;
 int tegra_uart_write (struct tegra_uart_port*,int ,int ) ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;

__attribute__((used)) static void tegra_uart_enable_ms(struct uart_port *u)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);

 if (tup->enable_modem_interrupt) {
  tup->ier_shadow |= UART_IER_MSI;
  tegra_uart_write(tup, tup->ier_shadow, UART_IER);
 }
}
