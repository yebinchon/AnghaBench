
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct txdone_entry_desc {int flags; } ;
struct skb_frame_desc {int flags; } ;
struct TYPE_5__ {int tx_success; int tx_failed; } ;
struct TYPE_6__ {TYPE_2__ qual; } ;
struct rt2x00_dev {int hw; TYPE_3__ link; int extra_tx_headroom; } ;
struct queue_entry {int skb; TYPE_1__* queue; } ;
struct ieee80211_tx_info {int dummy; } ;
struct TYPE_4__ {struct rt2x00_dev* rt2x00dev; } ;


 int DUMP_FRAME_TXDONE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (int ) ;
 int REQUIRE_L2PAD ;
 int REQUIRE_TASKLET_CONTEXT ;
 int SKBDESC_DESC_IN_SKB ;
 int SKBDESC_NOT_MAC80211 ;
 int TXDONE_SUCCESS ;
 int TXDONE_UNKNOWN ;
 int dev_kfree_skb_any (int ) ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 unsigned int ieee80211_get_hdrlen_from_skb (int ) ;
 int ieee80211_tx_status (int ,int ) ;
 int ieee80211_tx_status_ni (int ,int ) ;
 scalar_t__ rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_has_cap_hw_crypto (struct rt2x00_dev*) ;
 int rt2x00crypto_tx_insert_iv (int ,unsigned int) ;
 int rt2x00debug_dump_frame (struct rt2x00_dev*,int ,struct queue_entry*) ;
 int rt2x00lib_clear_entry (struct rt2x00_dev*,struct queue_entry*) ;
 int rt2x00lib_fill_tx_status (struct rt2x00_dev*,struct ieee80211_tx_info*,struct skb_frame_desc*,struct txdone_entry_desc*,int) ;
 scalar_t__ rt2x00lib_txdone_bar_status (struct queue_entry*) ;
 int rt2x00queue_remove_l2pad (int ,unsigned int) ;
 int rt2x00queue_unmap_skb (struct queue_entry*) ;
 int skb_pull (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00lib_txdone(struct queue_entry *entry,
        struct txdone_entry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(entry->skb);
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 u8 skbdesc_flags = skbdesc->flags;
 unsigned int header_length;
 bool success;




 rt2x00queue_unmap_skb(entry);




 skb_pull(entry->skb, rt2x00dev->extra_tx_headroom);




 skbdesc->flags &= ~SKBDESC_DESC_IN_SKB;




 header_length = ieee80211_get_hdrlen_from_skb(entry->skb);




 if (rt2x00_has_cap_flag(rt2x00dev, REQUIRE_L2PAD))
  rt2x00queue_remove_l2pad(entry->skb, header_length);







 if (rt2x00_has_cap_hw_crypto(rt2x00dev))
  rt2x00crypto_tx_insert_iv(entry->skb, header_length);





 rt2x00debug_dump_frame(rt2x00dev, DUMP_FRAME_TXDONE, entry);






 success =
     rt2x00lib_txdone_bar_status(entry) ||
     test_bit(TXDONE_SUCCESS, &txdesc->flags) ||
     test_bit(TXDONE_UNKNOWN, &txdesc->flags);




 rt2x00dev->link.qual.tx_success += success;
 rt2x00dev->link.qual.tx_failed += !success;

 rt2x00lib_fill_tx_status(rt2x00dev, tx_info, skbdesc, txdesc, success);







 if (!(skbdesc_flags & SKBDESC_NOT_MAC80211)) {
  if (rt2x00_has_cap_flag(rt2x00dev, REQUIRE_TASKLET_CONTEXT))
   ieee80211_tx_status(rt2x00dev->hw, entry->skb);
  else
   ieee80211_tx_status_ni(rt2x00dev->hw, entry->skb);
 } else {
  dev_kfree_skb_any(entry->skb);
 }

 rt2x00lib_clear_entry(rt2x00dev, entry);
}
