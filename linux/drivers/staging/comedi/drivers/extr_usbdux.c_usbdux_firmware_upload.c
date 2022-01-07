
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct comedi_device {int class_dev; } ;


 int BULK_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USBDUX_CPU_CS ;
 int USBDUX_FIRMWARE_CMD ;
 size_t USBDUX_FIRMWARE_MAX_LEN ;
 int VENDOR_DIR_OUT ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int* kmemdup (int const*,size_t,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int,int*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usbdux_firmware_upload(struct comedi_device *dev,
      const u8 *data, size_t size,
      unsigned long context)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 u8 *buf;
 u8 *tmp;
 int ret;

 if (!data)
  return 0;

 if (size > USBDUX_FIRMWARE_MAX_LEN) {
  dev_err(dev->class_dev,
   "usbdux firmware binary it too large for FX2.\n");
  return -ENOMEM;
 }


 buf = kmemdup(data, size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;


 tmp = kmalloc(1, GFP_KERNEL);
 if (!tmp) {
  kfree(buf);
  return -ENOMEM;
 }


 *tmp = 1;
 ret = usb_control_msg(usb, usb_sndctrlpipe(usb, 0),
         USBDUX_FIRMWARE_CMD,
         VENDOR_DIR_OUT,
         USBDUX_CPU_CS, 0x0000,
         tmp, 1,
         BULK_TIMEOUT);
 if (ret < 0) {
  dev_err(dev->class_dev, "can not stop firmware\n");
  goto done;
 }


 ret = usb_control_msg(usb, usb_sndctrlpipe(usb, 0),
         USBDUX_FIRMWARE_CMD,
         VENDOR_DIR_OUT,
         0, 0x0000,
         buf, size,
         BULK_TIMEOUT);
 if (ret < 0) {
  dev_err(dev->class_dev, "firmware upload failed\n");
  goto done;
 }


 *tmp = 0;
 ret = usb_control_msg(usb, usb_sndctrlpipe(usb, 0),
         USBDUX_FIRMWARE_CMD,
         VENDOR_DIR_OUT,
         USBDUX_CPU_CS, 0x0000,
         tmp, 1,
         BULK_TIMEOUT);
 if (ret < 0)
  dev_err(dev->class_dev, "can not start firmware\n");

done:
 kfree(tmp);
 kfree(buf);
 return ret;
}
