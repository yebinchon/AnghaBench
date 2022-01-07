
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {int lock; int tx_fifo; } ;


 int dma_fifo_avail (int *) ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fwtty_write_room(struct tty_struct *tty)
{
 struct fwtty_port *port = tty->driver_data;
 int n;

 spin_lock_bh(&port->lock);
 n = dma_fifo_avail(&port->tx_fifo);
 spin_unlock_bh(&port->lock);

 fwtty_dbg(port, "%d\n", n);

 return n;
}
