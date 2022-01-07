
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rt2x00_dev {TYPE_2__* ops; int flags; } ;
struct TYPE_8__ {TYPE_3__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_4__ control; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct data_queue {int tx_lock; } ;
typedef enum data_queue_qid { ____Placeholder_data_queue_qid } data_queue_qid ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int set_rts_threshold; } ;


 int DEVICE_STATE_PRESENT ;
 int DRV_PROJECT ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int QID_ATIM ;
 int REQUIRE_ATIM_QUEUE ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 int rt2x00_err (struct rt2x00_dev*,char*,int,int ) ;
 scalar_t__ rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00mac_tx_rts_cts (struct rt2x00_dev*,struct data_queue*,struct sk_buff*) ;
 int rt2x00queue_available (struct data_queue*) ;
 struct data_queue* rt2x00queue_get_tx_queue (struct rt2x00_dev*,int) ;
 int rt2x00queue_pause_queue (struct data_queue*) ;
 scalar_t__ rt2x00queue_threshold (struct data_queue*) ;
 int rt2x00queue_write_tx_frame (struct data_queue*,struct sk_buff*,int ,int) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void rt2x00mac_tx(struct ieee80211_hw *hw,
    struct ieee80211_tx_control *control,
    struct sk_buff *skb)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 enum data_queue_qid qid = skb_get_queue_mapping(skb);
 struct data_queue *queue = ((void*)0);







 if (!test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
  goto exit_free_skb;




 if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM &&
     rt2x00_has_cap_flag(rt2x00dev, REQUIRE_ATIM_QUEUE))
  qid = QID_ATIM;

 queue = rt2x00queue_get_tx_queue(rt2x00dev, qid);
 if (unlikely(!queue)) {
  rt2x00_err(rt2x00dev,
      "Attempt to send packet over invalid queue %d\n"
      "Please file bug report to %s\n", qid, DRV_PROJECT);
  goto exit_free_skb;
 }
 if (!rt2x00dev->ops->hw->set_rts_threshold &&
     (tx_info->control.rates[0].flags & (IEEE80211_TX_RC_USE_RTS_CTS |
      IEEE80211_TX_RC_USE_CTS_PROTECT))) {
  if (rt2x00queue_available(queue) <= 1) {




   spin_lock(&queue->tx_lock);
   if (rt2x00queue_threshold(queue))
    rt2x00queue_pause_queue(queue);
   spin_unlock(&queue->tx_lock);

   goto exit_free_skb;
  }

  if (rt2x00mac_tx_rts_cts(rt2x00dev, queue, skb))
   goto exit_free_skb;
 }

 if (unlikely(rt2x00queue_write_tx_frame(queue, skb, control->sta, 0)))
  goto exit_free_skb;

 return;

 exit_free_skb:
 ieee80211_free_txskb(hw, skb);
}
