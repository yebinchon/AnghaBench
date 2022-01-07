
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; } ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int (* usb_tx_post_hdl ) (struct ieee80211_hw*,struct urb*,struct sk_buff*) ;} ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 int RTL_TX_HEADER_SIZE ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 int pr_err (char*,int) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int stub1 (struct ieee80211_hw*,struct urb*,struct sk_buff*) ;

__attribute__((used)) static int _usb_tx_post(struct ieee80211_hw *hw, struct urb *urb,
   struct sk_buff *skb)
{
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));
 struct ieee80211_tx_info *txinfo;

 rtlusb->usb_tx_post_hdl(hw, urb, skb);
 skb_pull(skb, RTL_TX_HEADER_SIZE);
 txinfo = IEEE80211_SKB_CB(skb);
 ieee80211_tx_info_clear_status(txinfo);
 txinfo->flags |= IEEE80211_TX_STAT_ACK;

 if (urb->status) {
  pr_err("Urb has error status 0x%X\n", urb->status);
  goto out;
 }

out:
 ieee80211_tx_status_irqsafe(hw, skb);
 return urb->status;
}
