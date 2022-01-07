
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef void* u16 ;
typedef int tmp8 ;
typedef int tmp32 ;
typedef int tmp16 ;
struct usb_device {int dummy; } ;
struct dt9812_private {scalar_t__ device; } ;
struct comedi_device {int class_dev; struct dt9812_private* private; } ;
typedef int __le32 ;
typedef int __le16 ;


 scalar_t__ DT9812_DEVID_DT9812_10 ;
 scalar_t__ DT9812_DEVID_DT9812_2PT5 ;
 int EINVAL ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,void*,void*,scalar_t__,int ) ;
 int dt9812_read_info (struct comedi_device*,int,int *,int) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int usb_reset_configuration (struct usb_device*) ;

__attribute__((used)) static int dt9812_reset_device(struct comedi_device *dev)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct dt9812_private *devpriv = dev->private;
 u32 serial;
 u16 vendor;
 u16 product;
 u8 tmp8;
 __le16 tmp16;
 __le32 tmp32;
 int ret;
 int i;

 ret = dt9812_read_info(dev, 0, &tmp8, sizeof(tmp8));
 if (ret) {




  usb_reset_configuration(usb);
  for (i = 0; i < 10; i++) {
   ret = dt9812_read_info(dev, 1, &tmp8, sizeof(tmp8));
   if (ret == 0)
    break;
  }
  if (ret) {
   dev_err(dev->class_dev,
    "unable to reset configuration\n");
   return ret;
  }
 }

 ret = dt9812_read_info(dev, 1, &tmp16, sizeof(tmp16));
 if (ret) {
  dev_err(dev->class_dev, "failed to read vendor id\n");
  return ret;
 }
 vendor = le16_to_cpu(tmp16);

 ret = dt9812_read_info(dev, 3, &tmp16, sizeof(tmp16));
 if (ret) {
  dev_err(dev->class_dev, "failed to read product id\n");
  return ret;
 }
 product = le16_to_cpu(tmp16);

 ret = dt9812_read_info(dev, 5, &tmp16, sizeof(tmp16));
 if (ret) {
  dev_err(dev->class_dev, "failed to read device id\n");
  return ret;
 }
 devpriv->device = le16_to_cpu(tmp16);

 ret = dt9812_read_info(dev, 7, &tmp32, sizeof(tmp32));
 if (ret) {
  dev_err(dev->class_dev, "failed to read serial number\n");
  return ret;
 }
 serial = le32_to_cpu(tmp32);


 dev_info(dev->class_dev, "USB DT9812 (%4.4x.%4.4x.%4.4x) #0x%8.8x\n",
   vendor, product, devpriv->device, serial);

 if (devpriv->device != DT9812_DEVID_DT9812_10 &&
     devpriv->device != DT9812_DEVID_DT9812_2PT5) {
  dev_err(dev->class_dev, "Unsupported device!\n");
  return -EINVAL;
 }

 return 0;
}
