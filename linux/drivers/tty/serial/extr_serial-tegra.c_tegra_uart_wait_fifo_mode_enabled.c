
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_uart_port {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long TEGRA_UART_FCR_IIR_FIFO_EN ;
 int UART_IIR ;
 unsigned long tegra_uart_read (struct tegra_uart_port*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tegra_uart_wait_fifo_mode_enabled(struct tegra_uart_port *tup)
{
 unsigned long iir;
 unsigned int tmout = 100;

 do {
  iir = tegra_uart_read(tup, UART_IIR);
  if (iir & TEGRA_UART_FCR_IIR_FIFO_EN)
   return 0;
  udelay(1);
 } while (--tmout);

 return -ETIMEDOUT;
}
