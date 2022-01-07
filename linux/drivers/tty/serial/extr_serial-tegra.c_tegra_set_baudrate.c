
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; int dev; } ;
struct tegra_uart_port {unsigned int current_baud; unsigned long required_rate; unsigned long lcr_shadow; TYPE_2__ uport; int uart_clk; void* configured_rate; scalar_t__ n_adjustable_baud_rates; TYPE_1__* cdata; } ;
struct TYPE_3__ {scalar_t__ support_clk_src_div; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned long,unsigned int) ;
 int UART_IER ;
 int UART_LCR ;
 unsigned long UART_LCR_DLAB ;
 int UART_SCR ;
 int UART_TX ;
 void* clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_check_rate_in_range (struct tegra_uart_port*) ;
 unsigned long tegra_get_tolerance_rate (struct tegra_uart_port*,unsigned int,unsigned long) ;
 int tegra_uart_read (struct tegra_uart_port*,int ) ;
 int tegra_uart_wait_sym_time (struct tegra_uart_port*,int) ;
 int tegra_uart_write (struct tegra_uart_port*,unsigned long,int ) ;

__attribute__((used)) static int tegra_set_baudrate(struct tegra_uart_port *tup, unsigned int baud)
{
 unsigned long rate;
 unsigned int divisor;
 unsigned long lcr;
 unsigned long flags;
 int ret;

 if (tup->current_baud == baud)
  return 0;

 if (tup->cdata->support_clk_src_div) {
  rate = baud * 16;
  tup->required_rate = rate;

  if (tup->n_adjustable_baud_rates)
   rate = tegra_get_tolerance_rate(tup, baud, rate);

  ret = clk_set_rate(tup->uart_clk, rate);
  if (ret < 0) {
   dev_err(tup->uport.dev,
    "clk_set_rate() failed for rate %lu\n", rate);
   return ret;
  }
  tup->configured_rate = clk_get_rate(tup->uart_clk);
  divisor = 1;
  ret = tegra_check_rate_in_range(tup);
  if (ret < 0)
   return ret;
 } else {
  rate = clk_get_rate(tup->uart_clk);
  divisor = DIV_ROUND_CLOSEST(rate, baud * 16);
 }

 spin_lock_irqsave(&tup->uport.lock, flags);
 lcr = tup->lcr_shadow;
 lcr |= UART_LCR_DLAB;
 tegra_uart_write(tup, lcr, UART_LCR);

 tegra_uart_write(tup, divisor & 0xFF, UART_TX);
 tegra_uart_write(tup, ((divisor >> 8) & 0xFF), UART_IER);

 lcr &= ~UART_LCR_DLAB;
 tegra_uart_write(tup, lcr, UART_LCR);


 tegra_uart_read(tup, UART_SCR);
 spin_unlock_irqrestore(&tup->uport.lock, flags);

 tup->current_baud = baud;


 tegra_uart_wait_sym_time(tup, 2);
 return 0;
}
