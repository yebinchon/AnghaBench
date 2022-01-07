
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_uart_port {unsigned int symb_bit; scalar_t__ current_baud; } ;


 int DIV_ROUND_UP (unsigned int,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static void tegra_uart_wait_sym_time(struct tegra_uart_port *tup,
  unsigned int syms)
{
 if (tup->current_baud)
  udelay(DIV_ROUND_UP(syms * tup->symb_bit * 1000000,
   tup->current_baud));
}
