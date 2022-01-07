
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_device {int * ep; int udev; } ;


 size_t EP_DATA_OUT ;
 int pr_err (char*,int ,int) ;
 int usb_bulk_msg (int ,int ,unsigned char*,int,int*,int) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int ds_send_data(struct ds_device *dev, unsigned char *buf, int len)
{
 int count, err;

 count = 0;
 err = usb_bulk_msg(dev->udev, usb_sndbulkpipe(dev->udev, dev->ep[EP_DATA_OUT]), buf, len, &count, 1000);
 if (err < 0) {
  pr_err("Failed to write 1-wire data to ep0x%x: "
   "err=%d.\n", dev->ep[EP_DATA_OUT], err);
  return err;
 }

 return err;
}
