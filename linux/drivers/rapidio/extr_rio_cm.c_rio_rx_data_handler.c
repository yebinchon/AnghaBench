
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t count; size_t head; void** buf; } ;
struct rio_channel {scalar_t__ state; int lock; int comp; TYPE_1__ rx_ring; int id; } ;
struct rio_ch_chan_hdr {int dst_ch; } ;
struct cm_dev {int dummy; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 size_t RIOCM_RX_RING_SIZE ;
 scalar_t__ RIO_CM_CONNECTED ;
 int RX_DATA ;
 int complete (int *) ;
 int kfree (void*) ;
 int ntohs (int ) ;
 int riocm_debug (int ,char*,int ,...) ;
 struct rio_channel* riocm_get_channel (int ) ;
 int riocm_put_channel (struct rio_channel*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int rio_rx_data_handler(struct cm_dev *cm, void *buf)
{
 struct rio_ch_chan_hdr *hdr;
 struct rio_channel *ch;

 hdr = buf;

 riocm_debug(RX_DATA, "for ch=%d", ntohs(hdr->dst_ch));

 ch = riocm_get_channel(ntohs(hdr->dst_ch));
 if (!ch) {

  kfree(buf);
  return -ENODEV;
 }


 spin_lock(&ch->lock);

 if (ch->state != RIO_CM_CONNECTED) {

  riocm_debug(RX_DATA, "ch=%d is in wrong state=%d",
       ch->id, ch->state);
  spin_unlock(&ch->lock);
  kfree(buf);
  riocm_put_channel(ch);
  return -EIO;
 }

 if (ch->rx_ring.count == RIOCM_RX_RING_SIZE) {

  riocm_debug(RX_DATA, "ch=%d is full", ch->id);
  spin_unlock(&ch->lock);
  kfree(buf);
  riocm_put_channel(ch);
  return -ENOMEM;
 }

 ch->rx_ring.buf[ch->rx_ring.head] = buf;
 ch->rx_ring.head++;
 ch->rx_ring.count++;
 ch->rx_ring.head %= RIOCM_RX_RING_SIZE;

 complete(&ch->comp);

 spin_unlock(&ch->lock);
 riocm_put_channel(ch);

 return 0;
}
