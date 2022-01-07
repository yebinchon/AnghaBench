
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; } ;
struct rtl_usb {int rx_cleanup_urbs; int rx_queue; int rx_work_tasklet; int rx_submitted; } ;
struct TYPE_2__ {int rtl_wq; int lps_change_work; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;


 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int skb_queue_purge (int *) ;
 int tasklet_kill (int *) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void _rtl_usb_cleanup_rx(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));
 struct urb *urb;

 usb_kill_anchored_urbs(&rtlusb->rx_submitted);

 tasklet_kill(&rtlusb->rx_work_tasklet);
 cancel_work_sync(&rtlpriv->works.lps_change_work);

 flush_workqueue(rtlpriv->works.rtl_wq);
 destroy_workqueue(rtlpriv->works.rtl_wq);

 skb_queue_purge(&rtlusb->rx_queue);

 while ((urb = usb_get_from_anchor(&rtlusb->rx_cleanup_urbs))) {
  usb_free_coherent(urb->dev, urb->transfer_buffer_length,
    urb->transfer_buffer, urb->transfer_dma);
  usb_free_urb(urb);
 }
}
