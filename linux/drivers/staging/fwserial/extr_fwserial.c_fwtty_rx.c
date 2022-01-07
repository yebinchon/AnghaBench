
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lost; int reads; } ;
struct TYPE_3__ {size_t rx; int overrun; } ;
struct fwtty_port {int mstatus; int overrun; unsigned int status_mask; unsigned int ignore_mask; TYPE_2__ stats; TYPE_1__ icount; int port; scalar_t__ write_only; } ;


 int EIO ;
 scalar_t__ HIGH_WATERMARK ;
 int TTY_NORMAL ;
 int TTY_OVERRUN ;
 int UART_LSR_BI ;
 unsigned int UART_LSR_OE ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 int fwtty_err_ratelimited (struct fwtty_port*,char*) ;
 int fwtty_profile_data (int ,int) ;
 int fwtty_throttle_port (struct fwtty_port*) ;
 scalar_t__ tty_buffer_space_avail (int *) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,int ,int ) ;
 int tty_insert_flip_string_fixed_flag (int *,unsigned char*,int ,int) ;

__attribute__((used)) static int fwtty_rx(struct fwtty_port *port, unsigned char *data, size_t len)
{
 int c, n = len;
 unsigned int lsr;
 int err = 0;

 fwtty_dbg(port, "%d\n", n);
 fwtty_profile_data(port->stats.reads, n);

 if (port->write_only) {
  n = 0;
  goto out;
 }


 lsr = (port->mstatus >> 24) & ~UART_LSR_BI;

 if (port->overrun)
  lsr |= UART_LSR_OE;

 if (lsr & UART_LSR_OE)
  ++port->icount.overrun;

 lsr &= port->status_mask;
 if (lsr & ~port->ignore_mask & UART_LSR_OE) {
  if (!tty_insert_flip_char(&port->port, 0, TTY_OVERRUN)) {
   err = -EIO;
   goto out;
  }
 }
 port->overrun = 0;

 if (lsr & port->ignore_mask & ~UART_LSR_OE) {

  n = 0;
  goto out;
 }

 c = tty_insert_flip_string_fixed_flag(&port->port, data, TTY_NORMAL, n);
 if (c > 0)
  tty_flip_buffer_push(&port->port);
 n -= c;

 if (n) {
  port->overrun = 1;
  err = -EIO;
  fwtty_err_ratelimited(port, "flip buffer overrun\n");

 } else {





  if (tty_buffer_space_avail(&port->port) < HIGH_WATERMARK)
   fwtty_throttle_port(port);
 }

out:
 port->icount.rx += len;
 port->stats.lost += n;
 return err;
}
