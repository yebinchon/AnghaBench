
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int len; } ;
struct fwtty_transaction {TYPE_3__ dma_pended; struct fwtty_port* port; } ;
struct TYPE_5__ {int dropped; } ;
struct TYPE_4__ {int tx; } ;
struct fwtty_port {int port; TYPE_2__ stats; int lock; int tx_fifo; TYPE_1__ icount; } ;
struct fw_card {int dummy; } ;



 int WAKEUP_CHARS ;
 int dma_fifo_level (int *) ;
 int dma_fifo_out_complete (int *,TYPE_3__*) ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static void fwtty_tx_complete(struct fw_card *card, int rcode,
         void *data, size_t length,
         struct fwtty_transaction *txn)
{
 struct fwtty_port *port = txn->port;
 int len;

 fwtty_dbg(port, "rcode: %d\n", rcode);

 switch (rcode) {
 case 128:
  spin_lock_bh(&port->lock);
  dma_fifo_out_complete(&port->tx_fifo, &txn->dma_pended);
  len = dma_fifo_level(&port->tx_fifo);
  spin_unlock_bh(&port->lock);

  port->icount.tx += txn->dma_pended.len;
  break;

 default:

  spin_lock_bh(&port->lock);
  dma_fifo_out_complete(&port->tx_fifo, &txn->dma_pended);
  len = dma_fifo_level(&port->tx_fifo);
  spin_unlock_bh(&port->lock);

  port->stats.dropped += txn->dma_pended.len;
 }

 if (len < WAKEUP_CHARS)
  tty_port_tty_wakeup(&port->port);
}
