
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct fwtty_port* driver_data; } ;
struct TYPE_2__ {int writes; } ;
struct fwtty_port {int lock; int drain; int tx_fifo; TYPE_1__ stats; } ;


 int DRAIN_THRESHOLD ;
 int debug_short_write (struct fwtty_port*,int,int) ;
 int dma_fifo_in (int *,unsigned char const*,int) ;
 int dma_fifo_out_level (int *) ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 int fwtty_profile_data (int ,int) ;
 int fwtty_tx (struct fwtty_port*,int) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fwtty_write(struct tty_struct *tty, const unsigned char *buf, int c)
{
 struct fwtty_port *port = tty->driver_data;
 int n, len;

 fwtty_dbg(port, "%d\n", c);
 fwtty_profile_data(port->stats.writes, c);

 spin_lock_bh(&port->lock);
 n = dma_fifo_in(&port->tx_fifo, buf, c);
 len = dma_fifo_out_level(&port->tx_fifo);
 if (len < DRAIN_THRESHOLD)
  schedule_delayed_work(&port->drain, 1);
 spin_unlock_bh(&port->lock);

 if (len >= DRAIN_THRESHOLD)
  fwtty_tx(port, 0);

 debug_short_write(port, c, n);

 return (n < 0) ? 0 : n;
}
