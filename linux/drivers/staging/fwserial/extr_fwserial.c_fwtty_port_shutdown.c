
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct fwtty_port {int lock; int tx_fifo; scalar_t__ overrun; scalar_t__ break_ctl; scalar_t__ flags; int drain; int emit_breaks; } ;


 int __fwtty_write_port_status (struct fwtty_port*) ;
 int cancel_delayed_work_sync (int *) ;
 int dma_fifo_free (int *) ;
 struct fwtty_port* port ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fwtty_port* to_port (struct tty_port*,int ) ;

__attribute__((used)) static void fwtty_port_shutdown(struct tty_port *tty_port)
{
 struct fwtty_port *port = to_port(tty_port, port);



 cancel_delayed_work_sync(&port->emit_breaks);
 cancel_delayed_work_sync(&port->drain);

 spin_lock_bh(&port->lock);
 port->flags = 0;
 port->break_ctl = 0;
 port->overrun = 0;
 __fwtty_write_port_status(port);
 dma_fifo_free(&port->tx_fifo);
 spin_unlock_bh(&port->lock);
}
