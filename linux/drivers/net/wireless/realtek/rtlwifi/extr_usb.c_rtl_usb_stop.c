
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; } ;
struct rtl_usb {int rx_cleanup_urbs; int rx_queue; int rx_work_tasklet; int rx_submitted; } ;
struct TYPE_4__ {int rtl_wq; int lps_change_work; int fill_h2c_cmd; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ works; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* hw_disable ) (struct ieee80211_hw*) ;} ;


 int SET_USB_STOP (struct rtl_usb*) ;
 int cancel_work_sync (int *) ;
 int flush_workqueue (int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int set_hal_stop (struct rtl_hal*) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct ieee80211_hw*) ;
 int tasklet_kill (int *) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void rtl_usb_stop(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));
 struct urb *urb;


 set_hal_stop(rtlhal);
 cancel_work_sync(&rtlpriv->works.fill_h2c_cmd);

 SET_USB_STOP(rtlusb);


 usb_kill_anchored_urbs(&rtlusb->rx_submitted);

 tasklet_kill(&rtlusb->rx_work_tasklet);
 cancel_work_sync(&rtlpriv->works.lps_change_work);

 flush_workqueue(rtlpriv->works.rtl_wq);

 skb_queue_purge(&rtlusb->rx_queue);

 while ((urb = usb_get_from_anchor(&rtlusb->rx_cleanup_urbs))) {
  usb_free_coherent(urb->dev, urb->transfer_buffer_length,
    urb->transfer_buffer, urb->transfer_dma);
  usb_free_urb(urb);
 }

 rtlpriv->cfg->ops->hw_disable(hw);
}
