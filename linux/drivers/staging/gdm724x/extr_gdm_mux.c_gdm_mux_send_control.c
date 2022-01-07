
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct mux_dev {struct usb_device* usbdev; } ;


 int USB_RT_ACM ;
 int min (int,int ) ;
 int pr_err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int ,int,int,void*,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int gdm_mux_send_control(void *priv_dev, int request, int value,
    void *buf, int len)
{
 struct mux_dev *mux_dev = priv_dev;
 struct usb_device *usbdev = mux_dev->usbdev;
 int ret;

 ret = usb_control_msg(usbdev,
         usb_sndctrlpipe(usbdev, 0),
         request,
         USB_RT_ACM,
         value,
         2,
         buf,
         len,
         5000
        );

 if (ret < 0)
  pr_err("usb_control_msg error: %d\n", ret);

 return min(ret, 0);
}
