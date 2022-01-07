
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rtl_usb {int (* usb_mq_to_hwq ) (int ,int ) ;} ;
struct rtl_tcb_desc {int dummy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;


 int NETDEV_TX_OK ;
 int _rtl_usb_transmit (struct ieee80211_hw*,struct sk_buff*,int ) ;
 int _rtl_usb_tx_preprocess (struct ieee80211_hw*,struct ieee80211_sta*,struct sk_buff*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int is_hal_stop (struct rtl_hal*) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int stub1 (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rtl_usb_tx(struct ieee80211_hw *hw,
        struct ieee80211_sta *sta,
        struct sk_buff *skb,
        struct rtl_tcb_desc *dummy)
{
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
 __le16 fc = hdr->frame_control;
 u16 hw_queue;

 if (unlikely(is_hal_stop(rtlhal)))
  goto err_free;
 hw_queue = rtlusb->usb_mq_to_hwq(fc, skb_get_queue_mapping(skb));
 _rtl_usb_tx_preprocess(hw, sta, skb, hw_queue);
 _rtl_usb_transmit(hw, skb, hw_queue);
 return NETDEV_TX_OK;

err_free:
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
