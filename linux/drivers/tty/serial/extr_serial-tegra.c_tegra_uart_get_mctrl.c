
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct tegra_uart_port {scalar_t__ enable_modem_interrupt; } ;


 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RI ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;

__attribute__((used)) static unsigned int tegra_uart_get_mctrl(struct uart_port *u)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);
 if (tup->enable_modem_interrupt)
  return TIOCM_RI | TIOCM_CD | TIOCM_DSR | TIOCM_CTS;
 return TIOCM_CTS;
}
