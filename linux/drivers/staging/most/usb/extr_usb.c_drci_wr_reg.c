
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;


 int DRCI_WRITE_REQ ;
 int HZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int drci_wr_reg(struct usb_device *dev, u16 reg, u16 data)
{
 return usb_control_msg(dev,
          usb_sndctrlpipe(dev, 0),
          DRCI_WRITE_REQ,
          USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
          data,
          reg,
          ((void*)0),
          0,
          5 * HZ);
}
