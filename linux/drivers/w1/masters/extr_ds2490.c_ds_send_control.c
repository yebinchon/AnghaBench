
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ds_device {int * ep; int udev; } ;


 int COMM_CMD ;
 size_t EP_CONTROL ;
 int VENDOR ;
 int pr_err (char*,int ,int ,int) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ds_send_control(struct ds_device *dev, u16 value, u16 index)
{
 int err;

 err = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, dev->ep[EP_CONTROL]),
   COMM_CMD, VENDOR, value, index, ((void*)0), 0, 1000);
 if (err < 0) {
  pr_err("Failed to send control message %x.%x: err=%d.\n",
    value, index, err);
  return err;
 }

 return err;
}
