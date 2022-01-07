
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_status {int dummy; } ;
struct ds_device {int st_buf; int * ep; int udev; } ;


 size_t EP_STATUS ;
 int ds_dump_status (struct ds_device*,int ,int) ;
 int memcpy (struct ds_status*,int ,int) ;
 int memset (struct ds_status*,int ,int) ;
 int pr_err (char*,int ,int) ;
 int usb_interrupt_msg (int ,int ,int ,int,int*,int) ;
 int usb_rcvintpipe (int ,int ) ;

__attribute__((used)) static int ds_recv_status(struct ds_device *dev, struct ds_status *st,
     bool dump)
{
 int count, err;

 if (st)
  memset(st, 0, sizeof(*st));

 count = 0;
 err = usb_interrupt_msg(dev->udev,
    usb_rcvintpipe(dev->udev,
            dev->ep[EP_STATUS]),
    dev->st_buf, sizeof(dev->st_buf),
    &count, 1000);
 if (err < 0) {
  pr_err("Failed to read 1-wire data from 0x%x: err=%d.\n",
         dev->ep[EP_STATUS], err);
  return err;
 }

 if (dump)
  ds_dump_status(dev, dev->st_buf, count);

 if (st && count >= sizeof(*st))
  memcpy(st, dev->st_buf, sizeof(*st));

 return count;
}
