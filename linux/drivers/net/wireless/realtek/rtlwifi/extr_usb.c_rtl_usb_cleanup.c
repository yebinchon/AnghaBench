
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int tx_submitted; int * tx_pending; int (* usb_tx_cleanup ) (struct ieee80211_hw*,struct sk_buff*) ;int * tx_skb_queue; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 size_t RTL_USB_MAX_EP_NUM ;
 int _rtl_usb_cleanup_rx (struct ieee80211_hw*) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct ieee80211_hw*,struct sk_buff*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void rtl_usb_cleanup(struct ieee80211_hw *hw)
{
 u32 i;
 struct sk_buff *_skb;
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));
 struct ieee80211_tx_info *txinfo;


 _rtl_usb_cleanup_rx(hw);


 for (i = 0; i < RTL_USB_MAX_EP_NUM; i++) {
  while ((_skb = skb_dequeue(&rtlusb->tx_skb_queue[i]))) {
   rtlusb->usb_tx_cleanup(hw, _skb);
   txinfo = IEEE80211_SKB_CB(_skb);
   ieee80211_tx_info_clear_status(txinfo);
   txinfo->flags |= IEEE80211_TX_STAT_ACK;
   ieee80211_tx_status_irqsafe(hw, _skb);
  }
  usb_kill_anchored_urbs(&rtlusb->tx_pending[i]);
 }
 usb_kill_anchored_urbs(&rtlusb->tx_submitted);
}
