
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tty_port {int dummy; } ;
struct TYPE_5__ {int overrun; int parity; int frame; int buf_overrun; int brk; } ;
struct TYPE_6__ {TYPE_2__ icount; TYPE_1__* state; } ;
struct imx_port {TYPE_3__ port; } ;
struct TYPE_4__ {struct tty_port port; } ;


 int TTY_BREAK ;
 int USR1 ;
 int USR1_FRAMERR ;
 int USR1_PARITYERR ;
 int USR2 ;
 int USR2_BRCD ;
 int USR2_ORE ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int,int ) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 scalar_t__ tty_insert_flip_char (struct tty_port*,int ,int ) ;
 int uart_handle_break (TYPE_3__*) ;

__attribute__((used)) static void imx_uart_clear_rx_errors(struct imx_port *sport)
{
 struct tty_port *port = &sport->port.state->port;
 u32 usr1, usr2;

 usr1 = imx_uart_readl(sport, USR1);
 usr2 = imx_uart_readl(sport, USR2);

 if (usr2 & USR2_BRCD) {
  sport->port.icount.brk++;
  imx_uart_writel(sport, USR2_BRCD, USR2);
  uart_handle_break(&sport->port);
  if (tty_insert_flip_char(port, 0, TTY_BREAK) == 0)
   sport->port.icount.buf_overrun++;
  tty_flip_buffer_push(port);
 } else {
  if (usr1 & USR1_FRAMERR) {
   sport->port.icount.frame++;
   imx_uart_writel(sport, USR1_FRAMERR, USR1);
  } else if (usr1 & USR1_PARITYERR) {
   sport->port.icount.parity++;
   imx_uart_writel(sport, USR1_PARITYERR, USR1);
  }
 }

 if (usr2 & USR2_ORE) {
  sport->port.icount.overrun++;
  imx_uart_writel(sport, USR2_ORE, USR2);
 }

}
