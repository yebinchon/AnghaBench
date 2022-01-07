
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {int break_ctl; int lock; int flags; int tx_fifo; int wait_tx; } ;


 int EINTR ;
 long ERESTARTSYS ;
 int IN_TX ;
 int STOP_TX ;
 int __fwtty_write_port_status (struct fwtty_port*) ;
 int clear_bit (int ,int *) ;
 int dma_fifo_reset (int *) ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 int fwtty_restart_tx (struct fwtty_port*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;
 long wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int fwtty_break_ctl(struct tty_struct *tty, int state)
{
 struct fwtty_port *port = tty->driver_data;
 long ret;

 fwtty_dbg(port, "%d\n", state);

 if (state == -1) {
  set_bit(STOP_TX, &port->flags);
  ret = wait_event_interruptible_timeout(port->wait_tx,
            !test_bit(IN_TX, &port->flags),
            10);
  if (ret == 0 || ret == -ERESTARTSYS) {
   clear_bit(STOP_TX, &port->flags);
   fwtty_restart_tx(port);
   return -EINTR;
  }
 }

 spin_lock_bh(&port->lock);
 port->break_ctl = (state == -1);
 __fwtty_write_port_status(port);
 spin_unlock_bh(&port->lock);

 if (state == 0) {
  spin_lock_bh(&port->lock);
  dma_fifo_reset(&port->tx_fifo);
  clear_bit(STOP_TX, &port->flags);
  spin_unlock_bh(&port->lock);
 }
 return 0;
}
