
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
struct tegra_uart_port {unsigned long fcr_shadow; scalar_t__ rts_active; TYPE_1__* cdata; } ;
struct TYPE_2__ {scalar_t__ fifo_mode_enable_status; scalar_t__ allow_txfifo_reset_fifo_mode; } ;


 int UART_FCR ;
 unsigned long UART_FCR_CLEAR_RCVR ;
 unsigned long UART_FCR_CLEAR_XMIT ;
 unsigned long UART_FCR_ENABLE_FIFO ;
 int UART_LSR ;
 unsigned int UART_LSR_DR ;
 unsigned int UART_LSR_TEMT ;
 int UART_SCR ;
 int set_rts (struct tegra_uart_port*,int) ;
 unsigned int tegra_uart_read (struct tegra_uart_port*,int ) ;
 int tegra_uart_wait_cycle_time (struct tegra_uart_port*,int) ;
 int tegra_uart_wait_fifo_mode_enabled (struct tegra_uart_port*) ;
 int tegra_uart_write (struct tegra_uart_port*,unsigned long,int ) ;
 int udelay (int) ;

__attribute__((used)) static void tegra_uart_fifo_reset(struct tegra_uart_port *tup, u8 fcr_bits)
{
 unsigned long fcr = tup->fcr_shadow;
 unsigned int lsr, tmout = 10000;

 if (tup->rts_active)
  set_rts(tup, 0);

 if (tup->cdata->allow_txfifo_reset_fifo_mode) {
  fcr |= fcr_bits & (UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
  tegra_uart_write(tup, fcr, UART_FCR);
 } else {
  fcr &= ~UART_FCR_ENABLE_FIFO;
  tegra_uart_write(tup, fcr, UART_FCR);
  udelay(60);
  fcr |= fcr_bits & (UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
  tegra_uart_write(tup, fcr, UART_FCR);
  fcr |= UART_FCR_ENABLE_FIFO;
  tegra_uart_write(tup, fcr, UART_FCR);
  if (tup->cdata->fifo_mode_enable_status)
   tegra_uart_wait_fifo_mode_enabled(tup);
 }


 tegra_uart_read(tup, UART_SCR);






 tegra_uart_wait_cycle_time(tup, 32);

 do {
  lsr = tegra_uart_read(tup, UART_LSR);
  if ((lsr | UART_LSR_TEMT) && !(lsr & UART_LSR_DR))
   break;
  udelay(1);
 } while (--tmout);

 if (tup->rts_active)
  set_rts(tup, 1);
}
