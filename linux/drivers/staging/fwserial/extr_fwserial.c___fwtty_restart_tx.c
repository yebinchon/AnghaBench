
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_port {int tx_fifo; int drain; } ;


 int dma_fifo_avail (int *) ;
 int dma_fifo_out_level (int *) ;
 int fwtty_dbg (struct fwtty_port*,char*,int,int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void __fwtty_restart_tx(struct fwtty_port *port)
{
 int len, avail;

 len = dma_fifo_out_level(&port->tx_fifo);
 if (len)
  schedule_delayed_work(&port->drain, 0);
 avail = dma_fifo_avail(&port->tx_fifo);

 fwtty_dbg(port, "fifo len: %d avail: %d\n", len, avail);
}
