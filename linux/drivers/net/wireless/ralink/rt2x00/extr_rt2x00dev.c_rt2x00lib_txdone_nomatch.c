
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct txdone_entry_desc {int flags; } ;
struct skb_frame_desc {int sta; int flags; } ;
struct TYPE_5__ {int tx_success; int tx_failed; } ;
struct TYPE_6__ {TYPE_2__ qual; } ;
struct rt2x00_dev {int hw; TYPE_3__ link; } ;
struct queue_entry {int skb; TYPE_1__* queue; } ;
struct ieee80211_tx_info {int dummy; } ;
struct TYPE_4__ {struct rt2x00_dev* rt2x00dev; } ;


 int DUMP_FRAME_TXDONE ;
 int SKBDESC_DESC_IN_SKB ;
 int TXDONE_SUCCESS ;
 int TXDONE_UNKNOWN ;
 int dev_kfree_skb_any (int ) ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 int ieee80211_tx_status_noskb (int ,int ,struct ieee80211_tx_info*) ;
 int rt2x00debug_dump_frame (struct rt2x00_dev*,int ,struct queue_entry*) ;
 int rt2x00lib_clear_entry (struct rt2x00_dev*,struct queue_entry*) ;
 int rt2x00lib_fill_tx_status (struct rt2x00_dev*,struct ieee80211_tx_info*,struct skb_frame_desc*,struct txdone_entry_desc*,int) ;
 scalar_t__ rt2x00lib_txdone_bar_status (struct queue_entry*) ;
 int rt2x00queue_unmap_skb (struct queue_entry*) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00lib_txdone_nomatch(struct queue_entry *entry,
         struct txdone_entry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 struct ieee80211_tx_info txinfo = {};
 bool success;




 rt2x00queue_unmap_skb(entry);




 skbdesc->flags &= ~SKBDESC_DESC_IN_SKB;





 rt2x00debug_dump_frame(rt2x00dev, DUMP_FRAME_TXDONE, entry);






 success =
     rt2x00lib_txdone_bar_status(entry) ||
     test_bit(TXDONE_SUCCESS, &txdesc->flags);

 if (!test_bit(TXDONE_UNKNOWN, &txdesc->flags)) {



  rt2x00dev->link.qual.tx_success += success;
  rt2x00dev->link.qual.tx_failed += !success;

  rt2x00lib_fill_tx_status(rt2x00dev, &txinfo, skbdesc, txdesc,
      success);
  ieee80211_tx_status_noskb(rt2x00dev->hw, skbdesc->sta, &txinfo);
 }

 dev_kfree_skb_any(entry->skb);
 rt2x00lib_clear_entry(rt2x00dev, entry);
}
