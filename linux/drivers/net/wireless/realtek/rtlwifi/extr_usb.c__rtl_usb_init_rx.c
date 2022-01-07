
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl_usb_priv {int dummy; } ;
struct TYPE_6__ {unsigned long data; int func; } ;
struct rtl_usb {TYPE_3__ rx_work_tasklet; int rx_queue; int rx_cleanup_urbs; int rx_submitted; int in_ep; int rx_urb_num; int rx_max_size; int usb_rx_segregate_hdl; int usb_rx_hdl; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {TYPE_1__* usb_interface_cfg; } ;
struct TYPE_4__ {int usb_rx_segregate_hdl; int usb_rx_hdl; int in_ep_num; int rx_urb_num; int rx_max_size; } ;


 int _rtl_rx_work ;
 int init_usb_anchor (int *) ;
 int pr_info (char*,int ,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (struct rtl_usb_priv*) ;
 struct rtl_usb_priv* rtl_usbpriv (struct ieee80211_hw*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int _rtl_usb_init_rx(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_usb_priv *usb_priv = rtl_usbpriv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(usb_priv);

 rtlusb->rx_max_size = rtlpriv->cfg->usb_interface_cfg->rx_max_size;
 rtlusb->rx_urb_num = rtlpriv->cfg->usb_interface_cfg->rx_urb_num;
 rtlusb->in_ep = rtlpriv->cfg->usb_interface_cfg->in_ep_num;
 rtlusb->usb_rx_hdl = rtlpriv->cfg->usb_interface_cfg->usb_rx_hdl;
 rtlusb->usb_rx_segregate_hdl =
  rtlpriv->cfg->usb_interface_cfg->usb_rx_segregate_hdl;

 pr_info("rx_max_size %d, rx_urb_num %d, in_ep %d\n",
  rtlusb->rx_max_size, rtlusb->rx_urb_num, rtlusb->in_ep);
 init_usb_anchor(&rtlusb->rx_submitted);
 init_usb_anchor(&rtlusb->rx_cleanup_urbs);

 skb_queue_head_init(&rtlusb->rx_queue);
 rtlusb->rx_work_tasklet.func = _rtl_rx_work;
 rtlusb->rx_work_tasklet.data = (unsigned long)rtlusb;

 return 0;
}
