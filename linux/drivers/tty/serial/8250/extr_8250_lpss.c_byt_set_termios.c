
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {unsigned long uartclk; int status; scalar_t__ membase; int private_data; } ;
struct lpss8250 {TYPE_1__* board; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {unsigned long freq; } ;


 int BIT (int) ;
 scalar_t__ BYT_PRV_CLK ;
 int BYT_PRV_CLK_EN ;
 unsigned long BYT_PRV_CLK_M_VAL_SHIFT ;
 unsigned long BYT_PRV_CLK_N_VAL_SHIFT ;
 int BYT_PRV_CLK_UPDATE ;
 int CRTSCTS ;
 int UPSTAT_AUTOCTS ;
 int rational_best_approximation (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long*,unsigned long*) ;
 unsigned long rounddown_pow_of_two (unsigned long) ;
 int serial8250_do_set_termios (struct uart_port*,struct ktermios*,struct ktermios*) ;
 struct lpss8250* to_lpss8250 (int ) ;
 unsigned int tty_termios_baud_rate (struct ktermios*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void byt_set_termios(struct uart_port *p, struct ktermios *termios,
       struct ktermios *old)
{
 unsigned int baud = tty_termios_baud_rate(termios);
 struct lpss8250 *lpss = to_lpss8250(p->private_data);
 unsigned long fref = lpss->board->freq, fuart = baud * 16;
 unsigned long w = BIT(15) - 1;
 unsigned long m, n;
 u32 reg;


 fuart = fuart ? fuart : 9600 * 16;


 fuart *= rounddown_pow_of_two(fref / fuart);







 rational_best_approximation(fuart, fref, w, w, &m, &n);
 p->uartclk = fuart;


 reg = (m << BYT_PRV_CLK_M_VAL_SHIFT) | (n << BYT_PRV_CLK_N_VAL_SHIFT);
 writel(reg, p->membase + BYT_PRV_CLK);
 reg |= BYT_PRV_CLK_EN | BYT_PRV_CLK_UPDATE;
 writel(reg, p->membase + BYT_PRV_CLK);

 p->status &= ~UPSTAT_AUTOCTS;
 if (termios->c_cflag & CRTSCTS)
  p->status |= UPSTAT_AUTOCTS;

 serial8250_do_set_termios(p, termios, old);
}
