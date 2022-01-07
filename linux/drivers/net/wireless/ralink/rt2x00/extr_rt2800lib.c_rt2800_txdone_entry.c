
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct txdone_entry_desc {int retry; scalar_t__ flags; } ;
struct skb_frame_desc {int * sta; } ;
struct rt2x00_dev {int long_retry; int curr_band; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int ** wcid_to_sta; } ;
struct queue_entry {int skb; TYPE_1__* queue; } ;
typedef int __le32 ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;


 int TXDONE_AMPDU ;
 int TXDONE_FAILURE ;
 int TXDONE_FALLBACK ;
 int TXDONE_NO_ACK_REQ ;
 int TXDONE_SUCCESS ;
 int TXWI_W0_AMPDU ;
 int TXWI_W0_MCS ;
 int TX_STA_FIFO_MCS ;
 int TX_STA_FIFO_TX_ACK_REQUIRED ;
 int TX_STA_FIFO_TX_AGGRE ;
 int TX_STA_FIFO_TX_SUCCESS ;
 int TX_STA_FIFO_WCID ;
 int WCID_END ;
 int WCID_START ;
 int __set_bit (int ,scalar_t__*) ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rt2800_rate_from_status (struct skb_frame_desc*,int ,int ) ;
 int rt2x00_desc_read (int *,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00lib_txdone (struct queue_entry*,struct txdone_entry_desc*) ;
 int rt2x00lib_txdone_nomatch (struct queue_entry*,struct txdone_entry_desc*) ;
 scalar_t__ unlikely (int) ;

void rt2800_txdone_entry(struct queue_entry *entry, u32 status, __le32 *txwi,
    bool match)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 struct txdone_entry_desc txdesc;
 u32 word;
 u16 mcs, real_mcs;
 int aggr, ampdu, wcid, ack_req;




 txdesc.flags = 0;
 word = rt2x00_desc_read(txwi, 0);

 mcs = rt2x00_get_field32(word, TXWI_W0_MCS);
 ampdu = rt2x00_get_field32(word, TXWI_W0_AMPDU);

 real_mcs = rt2x00_get_field32(status, TX_STA_FIFO_MCS);
 aggr = rt2x00_get_field32(status, TX_STA_FIFO_TX_AGGRE);
 wcid = rt2x00_get_field32(status, TX_STA_FIFO_WCID);
 ack_req = rt2x00_get_field32(status, TX_STA_FIFO_TX_ACK_REQUIRED);
 if (unlikely((aggr == 1 && ampdu == 0 && real_mcs != mcs)) || !match) {
  rt2800_rate_from_status(skbdesc, status, rt2x00dev->curr_band);
  mcs = real_mcs;
 }

 if (aggr == 1 || ampdu == 1)
  __set_bit(TXDONE_AMPDU, &txdesc.flags);

 if (!ack_req)
  __set_bit(TXDONE_NO_ACK_REQ, &txdesc.flags);
 if (rt2x00_get_field32(status, TX_STA_FIFO_TX_SUCCESS)) {




  __set_bit(TXDONE_SUCCESS, &txdesc.flags);
  txdesc.retry = ((mcs > real_mcs) ? mcs - real_mcs : 0);
 } else {





  __set_bit(TXDONE_FAILURE, &txdesc.flags);
  txdesc.retry = rt2x00dev->long_retry;
 }





 if (txdesc.retry)
  __set_bit(TXDONE_FALLBACK, &txdesc.flags);

 if (!match) {

  rcu_read_lock();
  if (likely(wcid >= WCID_START && wcid <= WCID_END))
   skbdesc->sta = drv_data->wcid_to_sta[wcid - WCID_START];
  else
   skbdesc->sta = ((void*)0);
  rt2x00lib_txdone_nomatch(entry, &txdesc);
  rcu_read_unlock();
 } else {
  rt2x00lib_txdone(entry, &txdesc);
 }
}
