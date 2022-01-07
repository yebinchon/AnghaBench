
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_3__ {int rx; } ;
struct TYPE_4__ {unsigned long ignore_status_mask; TYPE_1__ icount; } ;
struct tegra_uart_port {TYPE_2__ uport; } ;


 char TTY_NORMAL ;
 int UART_LSR ;
 unsigned long UART_LSR_DR ;
 int UART_RX ;
 char tegra_uart_decode_rx_error (struct tegra_uart_port*,unsigned long) ;
 unsigned long tegra_uart_read (struct tegra_uart_port*,int ) ;
 int tty_insert_flip_char (struct tty_port*,unsigned char,char) ;
 int uart_handle_sysrq_char (TYPE_2__*,unsigned char) ;

__attribute__((used)) static void tegra_uart_handle_rx_pio(struct tegra_uart_port *tup,
  struct tty_port *tty)
{
 do {
  char flag = TTY_NORMAL;
  unsigned long lsr = 0;
  unsigned char ch;

  lsr = tegra_uart_read(tup, UART_LSR);
  if (!(lsr & UART_LSR_DR))
   break;

  flag = tegra_uart_decode_rx_error(tup, lsr);
  if (flag != TTY_NORMAL)
   continue;

  ch = (unsigned char) tegra_uart_read(tup, UART_RX);
  tup->uport.icount.rx++;

  if (!uart_handle_sysrq_char(&tup->uport, ch) && tty)
   tty_insert_flip_char(tty, ch, flag);

  if (tup->uport.ignore_status_mask & UART_LSR_DR)
   continue;
 } while (1);
}
