
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct txentry_desc {int flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct rt2x00_intf {int seqno; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {int vif; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; } ;


 int ENTRY_TXD_FIRST_FRAGMENT ;
 int ENTRY_TXD_GENERATE_SEQ ;
 int IEEE80211_SCTL_FRAG ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_ASSIGN_SEQ ;
 int REQUIRE_SW_SEQNO ;
 int __clear_bit (int ,int *) ;
 int __set_bit (int ,int *) ;
 int atomic_add_return (int,int *) ;
 int atomic_read (int *) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 int rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 struct rt2x00_intf* vif_to_intf (int ) ;

__attribute__((used)) static void rt2x00queue_create_tx_descriptor_seq(struct rt2x00_dev *rt2x00dev,
       struct sk_buff *skb,
       struct txentry_desc *txdesc)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct rt2x00_intf *intf = vif_to_intf(tx_info->control.vif);
 u16 seqno;

 if (!(tx_info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ))
  return;

 __set_bit(ENTRY_TXD_GENERATE_SEQ, &txdesc->flags);

 if (!rt2x00_has_cap_flag(rt2x00dev, REQUIRE_SW_SEQNO)) {







      if (ieee80211_is_beacon(hdr->frame_control)) {
   __set_bit(ENTRY_TXD_GENERATE_SEQ, &txdesc->flags);

   return;
  }

  __clear_bit(ENTRY_TXD_GENERATE_SEQ, &txdesc->flags);
 }
 if (test_bit(ENTRY_TXD_FIRST_FRAGMENT, &txdesc->flags))
  seqno = atomic_add_return(0x10, &intf->seqno);
 else
  seqno = atomic_read(&intf->seqno);

 hdr->seq_ctrl &= cpu_to_le16(IEEE80211_SCTL_FRAG);
 hdr->seq_ctrl |= cpu_to_le16(seqno);
}
