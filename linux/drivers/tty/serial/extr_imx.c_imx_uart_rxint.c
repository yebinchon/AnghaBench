
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tty_port {int dummy; } ;
struct TYPE_6__ {int buf_overrun; int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_7__ {unsigned int ignore_status_mask; int read_status_mask; int lock; TYPE_2__ icount; scalar_t__ sysrq; TYPE_1__* state; } ;
struct imx_port {TYPE_3__ port; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {struct tty_port port; } ;


 int IRQ_HANDLED ;
 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 unsigned int TTY_PARITY ;
 int URXD0 ;
 unsigned int URXD_BRK ;
 int URXD_DUMMY_READ ;
 unsigned int URXD_ERR ;
 unsigned int URXD_FRMERR ;
 unsigned int URXD_OVRRUN ;
 unsigned int URXD_PRERR ;
 int USR2 ;
 int USR2_BRCD ;
 int USR2_RDR ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 scalar_t__ tty_insert_flip_char (struct tty_port*,unsigned int,unsigned int) ;
 scalar_t__ uart_handle_break (TYPE_3__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_3__*,unsigned char) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static irqreturn_t imx_uart_rxint(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;
 unsigned int rx, flg, ignored = 0;
 struct tty_port *port = &sport->port.state->port;

 spin_lock(&sport->port.lock);

 while (imx_uart_readl(sport, USR2) & USR2_RDR) {
  u32 usr2;

  flg = TTY_NORMAL;
  sport->port.icount.rx++;

  rx = imx_uart_readl(sport, URXD0);

  usr2 = imx_uart_readl(sport, USR2);
  if (usr2 & USR2_BRCD) {
   imx_uart_writel(sport, USR2_BRCD, USR2);
   if (uart_handle_break(&sport->port))
    continue;
  }

  if (uart_handle_sysrq_char(&sport->port, (unsigned char)rx))
   continue;

  if (unlikely(rx & URXD_ERR)) {
   if (rx & URXD_BRK)
    sport->port.icount.brk++;
   else if (rx & URXD_PRERR)
    sport->port.icount.parity++;
   else if (rx & URXD_FRMERR)
    sport->port.icount.frame++;
   if (rx & URXD_OVRRUN)
    sport->port.icount.overrun++;

   if (rx & sport->port.ignore_status_mask) {
    if (++ignored > 100)
     goto out;
    continue;
   }

   rx &= (sport->port.read_status_mask | 0xFF);

   if (rx & URXD_BRK)
    flg = TTY_BREAK;
   else if (rx & URXD_PRERR)
    flg = TTY_PARITY;
   else if (rx & URXD_FRMERR)
    flg = TTY_FRAME;
   if (rx & URXD_OVRRUN)
    flg = TTY_OVERRUN;




  }

  if (sport->port.ignore_status_mask & URXD_DUMMY_READ)
   goto out;

  if (tty_insert_flip_char(port, rx, flg) == 0)
   sport->port.icount.buf_overrun++;
 }

out:
 spin_unlock(&sport->port.lock);
 tty_flip_buffer_push(port);
 return IRQ_HANDLED;
}
