
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_uart_port {int current_baud; } ;


 int DIV_ROUND_UP (unsigned int,int) ;
 int udelay (int ) ;

__attribute__((used)) static void tegra_uart_wait_cycle_time(struct tegra_uart_port *tup,
           unsigned int cycles)
{
 if (tup->current_baud)
  udelay(DIV_ROUND_UP(cycles * 1000000, tup->current_baud * 16));
}
