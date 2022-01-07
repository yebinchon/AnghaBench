
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct tegra_uart_port {unsigned long ier_shadow; int use_rx_pio; scalar_t__ rx_in_progress; struct uart_port uport; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long TEGRA_UART_IER_EORD ;
 int UART_IER ;
 unsigned long UART_IER_RDI ;
 unsigned long UART_IER_RLSI ;
 unsigned long UART_IER_RTOIE ;
 unsigned long UART_IER_THRI ;
 int UART_IIR ;
 unsigned long UART_IIR_NO_INT ;
 int UART_LSR ;
 int do_handle_rx_pio (struct tegra_uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_uart_decode_rx_error (struct tegra_uart_port*,unsigned long) ;
 int tegra_uart_handle_modem_signal_change (struct uart_port*) ;
 int tegra_uart_handle_rx_dma (struct tegra_uart_port*) ;
 int tegra_uart_handle_tx_pio (struct tegra_uart_port*) ;
 unsigned long tegra_uart_read (struct tegra_uart_port*,int ) ;
 int tegra_uart_write (struct tegra_uart_port*,unsigned long,int ) ;

__attribute__((used)) static irqreturn_t tegra_uart_isr(int irq, void *data)
{
 struct tegra_uart_port *tup = data;
 struct uart_port *u = &tup->uport;
 unsigned long iir;
 unsigned long ier;
 bool is_rx_int = 0;
 unsigned long flags;

 spin_lock_irqsave(&u->lock, flags);
 while (1) {
  iir = tegra_uart_read(tup, UART_IIR);
  if (iir & UART_IIR_NO_INT) {
   if (!tup->use_rx_pio && is_rx_int) {
    tegra_uart_handle_rx_dma(tup);
    if (tup->rx_in_progress) {
     ier = tup->ier_shadow;
     ier |= (UART_IER_RLSI | UART_IER_RTOIE |
      TEGRA_UART_IER_EORD);
     tup->ier_shadow = ier;
     tegra_uart_write(tup, ier, UART_IER);
    }
   }
   spin_unlock_irqrestore(&u->lock, flags);
   return IRQ_HANDLED;
  }

  switch ((iir >> 1) & 0x7) {
  case 0:
   tegra_uart_handle_modem_signal_change(u);
   break;

  case 1:
   tup->ier_shadow &= ~UART_IER_THRI;
   tegra_uart_write(tup, tup->ier_shadow, UART_IER);
   tegra_uart_handle_tx_pio(tup);
   break;

  case 4:
  case 6:
  case 2:
   if (!tup->use_rx_pio && !is_rx_int) {
    is_rx_int = 1;

    ier = tup->ier_shadow;
    ier |= UART_IER_RDI;
    tegra_uart_write(tup, ier, UART_IER);
    ier &= ~(UART_IER_RDI | UART_IER_RLSI |
     UART_IER_RTOIE | TEGRA_UART_IER_EORD);
    tup->ier_shadow = ier;
    tegra_uart_write(tup, ier, UART_IER);
   } else {
    do_handle_rx_pio(tup);
   }
   break;

  case 3:
   tegra_uart_decode_rx_error(tup,
     tegra_uart_read(tup, UART_LSR));
   break;

  case 5:
  case 7:
   break;
  }
 }
}
