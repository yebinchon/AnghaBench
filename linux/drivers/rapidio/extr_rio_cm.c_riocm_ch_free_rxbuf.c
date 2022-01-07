
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** inuse; int inuse_cnt; } ;
struct rio_channel {int lock; TYPE_1__ rx_ring; } ;


 int EINVAL ;
 int RIOCM_RX_RING_SIZE ;
 int kfree (void*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int riocm_ch_free_rxbuf(struct rio_channel *ch, void *buf)
{
 int i, ret = -EINVAL;

 spin_lock_bh(&ch->lock);

 for (i = 0; i < RIOCM_RX_RING_SIZE; i++) {
  if (ch->rx_ring.inuse[i] == buf) {
   ch->rx_ring.inuse[i] = ((void*)0);
   ch->rx_ring.inuse_cnt--;
   ret = 0;
   break;
  }
 }

 spin_unlock_bh(&ch->lock);

 if (!ret)
  kfree(buf);

 return ret;
}
