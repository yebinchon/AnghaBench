
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int have_langid; int string_langid; int dev; } ;


 int ENODATA ;
 int EPIPE ;
 int dev_dbg (int *,char*,unsigned char) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int) ;
 int usb_string_sub (struct usb_device*,int ,int ,unsigned char*) ;

__attribute__((used)) static int usb_get_langid(struct usb_device *dev, unsigned char *tbuf)
{
 int err;

 if (dev->have_langid)
  return 0;

 if (dev->string_langid < 0)
  return -EPIPE;

 err = usb_string_sub(dev, 0, 0, tbuf);



 if (err == -ENODATA || (err > 0 && err < 4)) {
  dev->string_langid = 0x0409;
  dev->have_langid = 1;
  dev_err(&dev->dev,
   "language id specifier not provided by device, defaulting to English\n");
  return 0;
 }




 if (err < 0) {
  dev_info(&dev->dev, "string descriptor 0 read error: %d\n",
     err);
  dev->string_langid = -1;
  return -EPIPE;
 }


 dev->string_langid = tbuf[2] | (tbuf[3] << 8);
 dev->have_langid = 1;
 dev_dbg(&dev->dev, "default language 0x%04x\n",
    dev->string_langid);
 return 0;
}
