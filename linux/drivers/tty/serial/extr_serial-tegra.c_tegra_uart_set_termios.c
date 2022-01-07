
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_4__ {int ignore_status_mask; int dev; } ;
struct tegra_uart_port {unsigned int ier_shadow; unsigned int lcr_shadow; int symb_bit; unsigned int mcr_shadow; TYPE_2__ uport; scalar_t__ rts_active; TYPE_1__* cdata; int uart_clk; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {scalar_t__ support_clk_src_div; } ;


 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;



 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int PARENB ;
 int PARODD ;
 unsigned int TEGRA_UART_MCR_CTS_EN ;
 unsigned int TEGRA_UART_MCR_RTS_EN ;
 int UART_IER ;
 unsigned int UART_IER_RDI ;
 int UART_LCR ;
 unsigned int UART_LCR_EPAR ;
 unsigned int UART_LCR_PARITY ;
 unsigned int UART_LCR_SPAR ;
 unsigned int UART_LCR_STOP ;
 unsigned int UART_LCR_WLEN5 ;
 unsigned int UART_LCR_WLEN6 ;
 unsigned int UART_LCR_WLEN7 ;
 unsigned int UART_LCR_WLEN8 ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_MCR ;
 struct clk* clk_get_parent (int ) ;
 unsigned long clk_get_rate (struct clk*) ;
 int dev_err (int ,char*) ;
 int set_rts (struct tegra_uart_port*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_set_baudrate (struct tegra_uart_port*,unsigned int) ;
 int tegra_uart_read (struct tegra_uart_port*,int ) ;
 int tegra_uart_write (struct tegra_uart_port*,unsigned int,int ) ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,unsigned long,unsigned long) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void tegra_uart_set_termios(struct uart_port *u,
  struct ktermios *termios, struct ktermios *oldtermios)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);
 unsigned int baud;
 unsigned long flags;
 unsigned int lcr;
 int symb_bit = 1;
 struct clk *parent_clk = clk_get_parent(tup->uart_clk);
 unsigned long parent_clk_rate = clk_get_rate(parent_clk);
 int max_divider = (tup->cdata->support_clk_src_div) ? 0x7FFF : 0xFFFF;
 int ret;

 max_divider *= 16;
 spin_lock_irqsave(&u->lock, flags);


 if (tup->rts_active)
  set_rts(tup, 0);


 tegra_uart_write(tup, tup->ier_shadow | UART_IER_RDI, UART_IER);
 tegra_uart_read(tup, UART_IER);
 tegra_uart_write(tup, 0, UART_IER);
 tegra_uart_read(tup, UART_IER);


 lcr = tup->lcr_shadow;
 lcr &= ~UART_LCR_PARITY;


 termios->c_cflag &= ~CMSPAR;

 if ((termios->c_cflag & PARENB) == PARENB) {
  symb_bit++;
  if (termios->c_cflag & PARODD) {
   lcr |= UART_LCR_PARITY;
   lcr &= ~UART_LCR_EPAR;
   lcr &= ~UART_LCR_SPAR;
  } else {
   lcr |= UART_LCR_PARITY;
   lcr |= UART_LCR_EPAR;
   lcr &= ~UART_LCR_SPAR;
  }
 }

 lcr &= ~UART_LCR_WLEN8;
 switch (termios->c_cflag & CSIZE) {
 case 130:
  lcr |= UART_LCR_WLEN5;
  symb_bit += 5;
  break;
 case 129:
  lcr |= UART_LCR_WLEN6;
  symb_bit += 6;
  break;
 case 128:
  lcr |= UART_LCR_WLEN7;
  symb_bit += 7;
  break;
 default:
  lcr |= UART_LCR_WLEN8;
  symb_bit += 8;
  break;
 }


 if (termios->c_cflag & CSTOPB) {
  lcr |= UART_LCR_STOP;
  symb_bit += 2;
 } else {
  lcr &= ~UART_LCR_STOP;
  symb_bit++;
 }

 tegra_uart_write(tup, lcr, UART_LCR);
 tup->lcr_shadow = lcr;
 tup->symb_bit = symb_bit;


 baud = uart_get_baud_rate(u, termios, oldtermios,
   parent_clk_rate/max_divider,
   parent_clk_rate/16);
 spin_unlock_irqrestore(&u->lock, flags);
 ret = tegra_set_baudrate(tup, baud);
 if (ret < 0) {
  dev_err(tup->uport.dev, "Failed to set baud rate\n");
  return;
 }
 if (tty_termios_baud_rate(termios))
  tty_termios_encode_baud_rate(termios, baud, baud);
 spin_lock_irqsave(&u->lock, flags);


 if (termios->c_cflag & CRTSCTS) {
  tup->mcr_shadow |= TEGRA_UART_MCR_CTS_EN;
  tup->mcr_shadow &= ~TEGRA_UART_MCR_RTS_EN;
  tegra_uart_write(tup, tup->mcr_shadow, UART_MCR);

  if (tup->rts_active)
   set_rts(tup, 1);
 } else {
  tup->mcr_shadow &= ~TEGRA_UART_MCR_CTS_EN;
  tup->mcr_shadow &= ~TEGRA_UART_MCR_RTS_EN;
  tegra_uart_write(tup, tup->mcr_shadow, UART_MCR);
 }


 uart_update_timeout(u, termios->c_cflag, baud);


 tegra_uart_read(tup, UART_IER);


 tegra_uart_write(tup, tup->ier_shadow, UART_IER);
 tegra_uart_read(tup, UART_IER);

 tup->uport.ignore_status_mask = 0;

 if ((termios->c_cflag & CREAD) == 0)
  tup->uport.ignore_status_mask |= UART_LSR_DR;
 if (termios->c_iflag & IGNBRK)
  tup->uport.ignore_status_mask |= UART_LSR_BI;

 spin_unlock_irqrestore(&u->lock, flags);
}
