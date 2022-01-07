
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uea_softc {int usb_dev; } ;


 int CTRL_TIMEOUT ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int UCDC_SEND_ENCAPSULATED_COMMAND ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kmemdup (void const*,int,int ) ;
 int uea_err (int ,char*,...) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int *,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int uea_request(struct uea_softc *sc,
  u16 value, u16 index, u16 size, const void *data)
{
 u8 *xfer_buff;
 int ret = -ENOMEM;

 xfer_buff = kmemdup(data, size, GFP_KERNEL);
 if (!xfer_buff) {
  uea_err(INS_TO_USBDEV(sc), "can't allocate xfer_buff\n");
  return ret;
 }

 ret = usb_control_msg(sc->usb_dev, usb_sndctrlpipe(sc->usb_dev, 0),
         UCDC_SEND_ENCAPSULATED_COMMAND,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         value, index, xfer_buff, size, CTRL_TIMEOUT);

 kfree(xfer_buff);
 if (ret < 0) {
  uea_err(INS_TO_USBDEV(sc), "usb_control_msg error %d\n", ret);
  return ret;
 }

 if (ret != size) {
  uea_err(INS_TO_USBDEV(sc),
         "usb_control_msg send only %d bytes (instead of %d)\n",
         ret, size);
  return -EIO;
 }

 return 0;
}
