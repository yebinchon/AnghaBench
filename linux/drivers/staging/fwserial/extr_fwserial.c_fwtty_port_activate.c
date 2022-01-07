
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int hw_stopped; int flags; } ;
struct tty_port {int dummy; } ;
struct TYPE_2__ {int console; } ;
struct fwtty_port {int mctrl; int mstatus; int lock; TYPE_1__ port; int max_payload; int tx_fifo; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int FWTTY_PORT_MAX_PEND_DMA ;
 int FWTTY_PORT_TXFIFO_LEN ;
 int GFP_KERNEL ;
 int TIOCM_CTS ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 int __fwtty_write_port_status (struct fwtty_port*) ;
 int cache_line_size () ;
 int clear_bit (int ,int *) ;
 int dma_fifo_alloc (int *,int ,int ,int ,int ,int ) ;
 struct fwtty_port* port ;
 int set_bit (int ,int *) ;
 unsigned int set_termios (struct fwtty_port*,struct tty_struct*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fwtty_port* to_port (struct tty_port*,int ) ;

__attribute__((used)) static int fwtty_port_activate(struct tty_port *tty_port,
          struct tty_struct *tty)
{
 struct fwtty_port *port = to_port(tty_port, port);
 unsigned int baud;
 int err;

 set_bit(TTY_IO_ERROR, &tty->flags);

 err = dma_fifo_alloc(&port->tx_fifo, FWTTY_PORT_TXFIFO_LEN,
        cache_line_size(),
        port->max_payload,
        FWTTY_PORT_MAX_PEND_DMA,
        GFP_KERNEL);
 if (err)
  return err;

 spin_lock_bh(&port->lock);

 baud = set_termios(port, tty);


 if (!port->port.console) {
  port->mctrl = 0;
  if (baud != 0)
   port->mctrl = TIOCM_DTR | TIOCM_RTS;
 }

 if (C_CRTSCTS(tty) && ~port->mstatus & TIOCM_CTS)
  tty->hw_stopped = 1;

 __fwtty_write_port_status(port);
 spin_unlock_bh(&port->lock);

 clear_bit(TTY_IO_ERROR, &tty->flags);

 return 0;
}
