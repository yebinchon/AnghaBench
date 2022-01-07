
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rxdone_entry_desc {int dev_flags; } ;
struct rt2x00_dev {int sleep_work; int workqueue; int flags; int aid; int last_beacon; TYPE_2__* hw; } ;
struct ieee80211_tim_ie {int bitmap_ctrl; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;


 int CONFIG_POWERSAVING ;
 scalar_t__ FCS_LEN ;
 int IEEE80211_CONF_PS ;
 int RXDONE_MY_BSS ;
 int WLAN_EID_TIM ;
 int ieee80211_check_tim (struct ieee80211_tim_ie*,int,int ) ;
 int ieee80211_is_beacon (int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 int queue_work (int ,int *) ;
 int* rt2x00lib_find_ie (scalar_t__,scalar_t__,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00lib_rxdone_check_ps(struct rt2x00_dev *rt2x00dev,
          struct sk_buff *skb,
          struct rxdone_entry_desc *rxdesc)
{
 struct ieee80211_hdr *hdr = (void *) skb->data;
 struct ieee80211_tim_ie *tim_ie;
 u8 *tim;
 u8 tim_len;
 bool cam;




 if (likely(!ieee80211_is_beacon(hdr->frame_control) ||
     !(rt2x00dev->hw->conf.flags & IEEE80211_CONF_PS)))
  return;


 if (skb->len <= 40 + FCS_LEN)
  return;


 if (!(rxdesc->dev_flags & RXDONE_MY_BSS) ||
     !rt2x00dev->aid)
  return;

 rt2x00dev->last_beacon = jiffies;

 tim = rt2x00lib_find_ie(skb->data, skb->len - FCS_LEN, WLAN_EID_TIM);
 if (!tim)
  return;

 if (tim[1] < sizeof(*tim_ie))
  return;

 tim_len = tim[1];
 tim_ie = (struct ieee80211_tim_ie *) &tim[2];




 cam = ieee80211_check_tim(tim_ie, tim_len, rt2x00dev->aid);


 cam |= (tim_ie->bitmap_ctrl & 0x01);

 if (!cam && !test_bit(CONFIG_POWERSAVING, &rt2x00dev->flags))
  queue_work(rt2x00dev->workqueue, &rt2x00dev->sleep_work);
}
