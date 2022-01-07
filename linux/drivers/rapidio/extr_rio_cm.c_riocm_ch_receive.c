
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inuse_cnt; size_t tail; int ** inuse; int count; int ** buf; } ;
struct rio_channel {int lock; TYPE_1__ rx_ring; int id; int comp; } ;


 int EAGAIN ;
 int ECONNRESET ;
 int EINTR ;
 int ENOMEM ;
 long ERESTARTSYS ;
 int ETIME ;
 int RIOCM_RX_RING_SIZE ;
 int RIO_CM_CONNECTED ;
 int WAIT ;
 int kfree (void*) ;
 scalar_t__ riocm_cmp (struct rio_channel*,int ) ;
 int riocm_debug (int ,char*,int ,long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 long wait_for_completion_interruptible_timeout (int *,long) ;

__attribute__((used)) static int riocm_ch_receive(struct rio_channel *ch, void **buf, long timeout)
{
 void *rxmsg = ((void*)0);
 int i, ret = 0;
 long wret;

 if (!riocm_cmp(ch, RIO_CM_CONNECTED)) {
  ret = -EAGAIN;
  goto out;
 }

 if (ch->rx_ring.inuse_cnt == RIOCM_RX_RING_SIZE) {



  ret = -ENOMEM;
  goto out;
 }

 wret = wait_for_completion_interruptible_timeout(&ch->comp, timeout);

 riocm_debug(WAIT, "wait on %d returned %ld", ch->id, wret);

 if (!wret)
  ret = -ETIME;
 else if (wret == -ERESTARTSYS)
  ret = -EINTR;
 else
  ret = riocm_cmp(ch, RIO_CM_CONNECTED) ? 0 : -ECONNRESET;

 if (ret)
  goto out;

 spin_lock_bh(&ch->lock);

 rxmsg = ch->rx_ring.buf[ch->rx_ring.tail];
 ch->rx_ring.buf[ch->rx_ring.tail] = ((void*)0);
 ch->rx_ring.count--;
 ch->rx_ring.tail++;
 ch->rx_ring.tail %= RIOCM_RX_RING_SIZE;
 ret = -ENOMEM;

 for (i = 0; i < RIOCM_RX_RING_SIZE; i++) {
  if (ch->rx_ring.inuse[i] == ((void*)0)) {
   ch->rx_ring.inuse[i] = rxmsg;
   ch->rx_ring.inuse_cnt++;
   ret = 0;
   break;
  }
 }

 if (ret) {

  kfree(rxmsg);
  rxmsg = ((void*)0);
 }

 spin_unlock_bh(&ch->lock);
out:
 *buf = rxmsg;
 return ret;
}
