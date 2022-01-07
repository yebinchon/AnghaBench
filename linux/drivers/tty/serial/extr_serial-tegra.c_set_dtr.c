
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_uart_port {unsigned long mcr_shadow; } ;


 int UART_MCR ;
 unsigned long UART_MCR_DTR ;
 int tegra_uart_write (struct tegra_uart_port*,unsigned long,int ) ;

__attribute__((used)) static void set_dtr(struct tegra_uart_port *tup, bool active)
{
 unsigned long mcr;

 mcr = tup->mcr_shadow;
 if (active)
  mcr |= UART_MCR_DTR;
 else
  mcr &= ~UART_MCR_DTR;
 if (mcr != tup->mcr_shadow) {
  tegra_uart_write(tup, mcr, UART_MCR);
  tup->mcr_shadow = mcr;
 }
}
