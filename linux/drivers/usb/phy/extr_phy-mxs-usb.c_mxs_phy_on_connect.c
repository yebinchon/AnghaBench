
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {scalar_t__ io_priv; int dev; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;


 int BM_USBPHY_CTRL_ENHOSTDISCONDETECT ;
 scalar_t__ HW_USBPHY_CTRL_SET ;
 int USB_SPEED_HIGH ;
 int dev_dbg (int ,char*,char*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxs_phy_on_connect(struct usb_phy *phy,
  enum usb_device_speed speed)
{
 dev_dbg(phy->dev, "%s device has connected\n",
  (speed == USB_SPEED_HIGH) ? "HS" : "FS/LS");

 if (speed == USB_SPEED_HIGH)
  writel(BM_USBPHY_CTRL_ENHOSTDISCONDETECT,
         phy->io_priv + HW_USBPHY_CTRL_SET);

 return 0;
}
