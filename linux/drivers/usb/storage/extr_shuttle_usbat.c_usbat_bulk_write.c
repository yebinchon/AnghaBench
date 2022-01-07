
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_bulk_pipe; } ;


 int USB_STOR_XFER_GOOD ;
 int usb_stor_bulk_transfer_sg (struct us_data*,int ,void*,unsigned int,int,int *) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned int) ;

__attribute__((used)) static int usbat_bulk_write(struct us_data *us,
       void* buf,
       unsigned int len,
       int use_sg)
{
 if (len == 0)
  return USB_STOR_XFER_GOOD;

 usb_stor_dbg(us, "len = %d\n", len);
 return usb_stor_bulk_transfer_sg(us, us->send_bulk_pipe, buf, len, use_sg, ((void*)0));
}
