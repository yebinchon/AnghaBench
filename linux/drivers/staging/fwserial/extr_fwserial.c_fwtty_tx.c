
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int hw_stopped; int stopped; } ;
struct TYPE_4__ {int len; int data; } ;
struct fwtty_transaction {TYPE_2__ dma_pended; } ;
struct TYPE_3__ {int sent; int txns; int fifo_errs; int tx_stall; } ;
struct fwtty_port {int wait_tx; int flags; int lock; int tx_fifo; int drain; TYPE_1__ stats; int peer; int port; } ;
struct fwtty_peer {int fifo_addr; } ;


 int EAGAIN ;
 int EALREADY ;
 int EIO ;
 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HZ ;
 int IN_TX ;
 int STOP_TX ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int WAKEUP_CHARS ;
 int WRITER_MINIMUM ;
 int clear_bit (int ,int *) ;
 int dma_fifo_level (int *) ;
 int dma_fifo_out_level (int *) ;
 int dma_fifo_out_pend (int *,TYPE_2__*) ;
 int fwtty_dbg (struct fwtty_port*,char*,int ,int) ;
 int fwtty_err_ratelimited (struct fwtty_port*,char*,int) ;
 int fwtty_profile_data (int ,int ) ;
 int fwtty_send_txn_async (struct fwtty_peer*,struct fwtty_transaction*,int ,int ,int ,int ,int ,struct fwtty_port*) ;
 int fwtty_tx_complete ;
 int fwtty_txn_cache ;
 struct fwtty_transaction* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct fwtty_transaction*) ;
 struct fwtty_peer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int schedule_delayed_work (int *,unsigned long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_wakeup (struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int fwtty_tx(struct fwtty_port *port, bool drain)
{
 struct fwtty_peer *peer;
 struct fwtty_transaction *txn;
 struct tty_struct *tty;
 int n, len;

 tty = tty_port_tty_get(&port->port);
 if (!tty)
  return -ENOENT;

 rcu_read_lock();
 peer = rcu_dereference(port->peer);
 if (!peer) {
  n = -EIO;
  goto out;
 }

 if (test_and_set_bit(IN_TX, &port->flags)) {
  n = -EALREADY;
  goto out;
 }


 n = -EAGAIN;
 while (!tty->stopped && !tty->hw_stopped &&
        !test_bit(STOP_TX, &port->flags)) {
  txn = kmem_cache_alloc(fwtty_txn_cache, GFP_ATOMIC);
  if (!txn) {
   n = -ENOMEM;
   break;
  }

  spin_lock_bh(&port->lock);
  n = dma_fifo_out_pend(&port->tx_fifo, &txn->dma_pended);
  spin_unlock_bh(&port->lock);

  fwtty_dbg(port, "out: %u rem: %d\n", txn->dma_pended.len, n);

  if (n < 0) {
   kmem_cache_free(fwtty_txn_cache, txn);
   if (n == -EAGAIN) {
    ++port->stats.tx_stall;
   } else if (n == -ENODATA) {
    fwtty_profile_data(port->stats.txns, 0);
   } else {
    ++port->stats.fifo_errs;
    fwtty_err_ratelimited(port, "fifo err: %d\n",
            n);
   }
   break;
  }

  fwtty_profile_data(port->stats.txns, txn->dma_pended.len);

  fwtty_send_txn_async(peer, txn, TCODE_WRITE_BLOCK_REQUEST,
         peer->fifo_addr, txn->dma_pended.data,
         txn->dma_pended.len, fwtty_tx_complete,
         port);
  ++port->stats.sent;





  if (n == 0 || (!drain && n < WRITER_MINIMUM))
   break;
 }

 if (n >= 0 || n == -EAGAIN || n == -ENOMEM || n == -ENODATA) {
  spin_lock_bh(&port->lock);
  len = dma_fifo_out_level(&port->tx_fifo);
  if (len) {
   unsigned long delay = (n == -ENOMEM) ? HZ : 1;

   schedule_delayed_work(&port->drain, delay);
  }
  len = dma_fifo_level(&port->tx_fifo);
  spin_unlock_bh(&port->lock);


  if (drain && len < WAKEUP_CHARS)
   tty_wakeup(tty);
 }

 clear_bit(IN_TX, &port->flags);
 wake_up_interruptible(&port->wait_tx);

out:
 rcu_read_unlock();
 tty_kref_put(tty);
 return n;
}
