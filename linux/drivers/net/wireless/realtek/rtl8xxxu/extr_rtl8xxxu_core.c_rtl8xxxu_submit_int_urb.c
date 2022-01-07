
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct urb {int dummy; } ;
struct rtl8xxxu_priv {int int_anchor; int int_buf; int pipe_interrupt; int udev; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int REG_USB_HIMR ;
 int USB_HIMR_CPWM ;
 int USB_INTR_CONTENT_LENGTH ;
 int rtl8xxxu_int_complete ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,int ,int ,int ,int ,struct rtl8xxxu_priv*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int rtl8xxxu_submit_int_urb(struct ieee80211_hw *hw)
{
 struct rtl8xxxu_priv *priv = hw->priv;
 struct urb *urb;
 u32 val32;
 int ret;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return -ENOMEM;

 usb_fill_int_urb(urb, priv->udev, priv->pipe_interrupt,
    priv->int_buf, USB_INTR_CONTENT_LENGTH,
    rtl8xxxu_int_complete, priv, 1);
 usb_anchor_urb(urb, &priv->int_anchor);
 ret = usb_submit_urb(urb, GFP_KERNEL);
 if (ret) {
  usb_unanchor_urb(urb);
  goto error;
 }

 val32 = rtl8xxxu_read32(priv, REG_USB_HIMR);
 val32 |= USB_HIMR_CPWM;
 rtl8xxxu_write32(priv, REG_USB_HIMR, val32);

error:
 return ret;
}
