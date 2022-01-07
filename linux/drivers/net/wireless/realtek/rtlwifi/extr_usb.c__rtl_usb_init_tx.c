
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {size_t* ep_mapping; } ;
struct rtl_usb {int * tx_pending; int * tx_skb_queue; int tx_submitted; int * usb_tx_aggregate_hdl; int usb_tx_cleanup; int usb_tx_post_hdl; TYPE_1__ ep_map; int max_bulk_out_size; int udev; } ;
struct rtl_priv {TYPE_3__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* usb_interface_cfg; } ;
struct TYPE_5__ {int * usb_tx_aggregate_hdl; int usb_tx_cleanup; int usb_tx_post_hdl; } ;


 int COMP_INIT ;
 int DBG_DMESG ;
 int EINVAL ;
 scalar_t__ IS_HIGH_SPEED_USB (int ) ;
 size_t RTL_USB_MAX_EP_NUM ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int USB_FULL_SPEED_BULK_SIZE ;
 int USB_HIGH_SPEED_BULK_SIZE ;
 size_t __RTL_TXQ_NUM ;
 int _none_usb_tx_aggregate_hdl ;
 int init_usb_anchor (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int _rtl_usb_init_tx(struct ieee80211_hw *hw)
{
 u32 i;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 rtlusb->max_bulk_out_size = IS_HIGH_SPEED_USB(rtlusb->udev)
          ? USB_HIGH_SPEED_BULK_SIZE
          : USB_FULL_SPEED_BULK_SIZE;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG, "USB Max Bulk-out Size=%d\n",
   rtlusb->max_bulk_out_size);

 for (i = 0; i < __RTL_TXQ_NUM; i++) {
  u32 ep_num = rtlusb->ep_map.ep_mapping[i];

  if (!ep_num) {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
     "Invalid endpoint map setting!\n");
   return -EINVAL;
  }
 }

 rtlusb->usb_tx_post_hdl =
   rtlpriv->cfg->usb_interface_cfg->usb_tx_post_hdl;
 rtlusb->usb_tx_cleanup =
   rtlpriv->cfg->usb_interface_cfg->usb_tx_cleanup;
 rtlusb->usb_tx_aggregate_hdl =
   (rtlpriv->cfg->usb_interface_cfg->usb_tx_aggregate_hdl)
   ? rtlpriv->cfg->usb_interface_cfg->usb_tx_aggregate_hdl
   : &_none_usb_tx_aggregate_hdl;

 init_usb_anchor(&rtlusb->tx_submitted);
 for (i = 0; i < RTL_USB_MAX_EP_NUM; i++) {
  skb_queue_head_init(&rtlusb->tx_skb_queue[i]);
  init_usb_anchor(&rtlusb->tx_pending[i]);
 }
 return 0;
}
