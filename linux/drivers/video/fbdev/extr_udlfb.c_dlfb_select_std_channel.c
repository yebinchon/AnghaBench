
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlfb_data {int udev; } ;
typedef int set_def_chn ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NR_USB_REQUEST_CHANNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int kfree (void*) ;
 void* kmemdup (int const*,int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int dlfb_select_std_channel(struct dlfb_data *dlfb)
{
 int ret;
 void *buf;
 static const u8 set_def_chn[] = {
    0x57, 0xCD, 0xDC, 0xA7,
    0x1C, 0x88, 0x5E, 0x15,
    0x60, 0xFE, 0xC6, 0x97,
    0x16, 0x3D, 0x47, 0xF2 };

 buf = kmemdup(set_def_chn, sizeof(set_def_chn), GFP_KERNEL);

 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(dlfb->udev, usb_sndctrlpipe(dlfb->udev, 0),
   NR_USB_REQUEST_CHANNEL,
   (USB_DIR_OUT | USB_TYPE_VENDOR), 0, 0,
   buf, sizeof(set_def_chn), USB_CTRL_SET_TIMEOUT);

 kfree(buf);

 return ret;
}
