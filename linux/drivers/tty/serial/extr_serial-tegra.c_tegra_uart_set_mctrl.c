
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct tegra_uart_port {int rts_active; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 int set_dtr (struct tegra_uart_port*,int) ;
 int set_loopbk (struct tegra_uart_port*,int) ;
 int set_rts (struct tegra_uart_port*,int) ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;

__attribute__((used)) static void tegra_uart_set_mctrl(struct uart_port *u, unsigned int mctrl)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);
 int enable;

 tup->rts_active = !!(mctrl & TIOCM_RTS);
 set_rts(tup, tup->rts_active);

 enable = !!(mctrl & TIOCM_DTR);
 set_dtr(tup, enable);

 enable = !!(mctrl & TIOCM_LOOP);
 set_loopbk(tup, enable);
}
