
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct tegra_uart_port {unsigned long lcr_shadow; } ;


 int UART_LCR ;
 unsigned long UART_LCR_SBC ;
 int tegra_uart_write (struct tegra_uart_port*,unsigned long,int ) ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;

__attribute__((used)) static void tegra_uart_break_ctl(struct uart_port *u, int break_ctl)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);
 unsigned long lcr;

 lcr = tup->lcr_shadow;
 if (break_ctl)
  lcr |= UART_LCR_SBC;
 else
  lcr &= ~UART_LCR_SBC;
 tegra_uart_write(tup, lcr, UART_LCR);
 tup->lcr_shadow = lcr;
}
