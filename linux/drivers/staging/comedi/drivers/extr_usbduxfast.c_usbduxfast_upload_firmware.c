
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct usb_device {int dummy; } ;
struct comedi_device {int class_dev; } ;


 int ENOMEM ;
 int EZTIMEOUT ;
 size_t FIRMWARE_MAX_LEN ;
 int GFP_KERNEL ;
 int USBDUXFASTSUB_CPUCS ;
 int USBDUXFASTSUB_FIRMWARE ;
 int VENDOR_DIR_OUT ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 unsigned char* kmemdup (unsigned char const*,size_t,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int,unsigned char*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usbduxfast_upload_firmware(struct comedi_device *dev,
          const u8 *data, size_t size,
          unsigned long context)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 u8 *buf;
 unsigned char *tmp;
 int ret;

 if (!data)
  return 0;

 if (size > FIRMWARE_MAX_LEN) {
  dev_err(dev->class_dev, "firmware binary too large for FX2\n");
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
         USBDUXFASTSUB_FIRMWARE,
         VENDOR_DIR_OUT,
         USBDUXFASTSUB_CPUCS, 0x0000,
         tmp, 1,
         EZTIMEOUT);
 if (ret < 0) {
  dev_err(dev->class_dev, "can not stop firmware\n");
  goto done;
 }


 ret = usb_control_msg(usb, usb_sndctrlpipe(usb, 0),
         USBDUXFASTSUB_FIRMWARE,
         VENDOR_DIR_OUT,
         0, 0x0000,
         buf, size,
         EZTIMEOUT);
 if (ret < 0) {
  dev_err(dev->class_dev, "firmware upload failed\n");
  goto done;
 }


 *tmp = 0;
 ret = usb_control_msg(usb, usb_sndctrlpipe(usb, 0),
         USBDUXFASTSUB_FIRMWARE,
         VENDOR_DIR_OUT,
         USBDUXFASTSUB_CPUCS, 0x0000,
         tmp, 1,
         EZTIMEOUT);
 if (ret < 0)
  dev_err(dev->class_dev, "can not start firmware\n");

done:
 kfree(tmp);
 kfree(buf);
 return ret;
}
