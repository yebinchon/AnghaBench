
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us_data {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int GFP_NOIO ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int*,int) ;
 int rts51x_bulk_transport (struct us_data*,int,int*,int,int*,int,int ,int*) ;
 int usb_stor_dbg (struct us_data*,char*,int) ;

__attribute__((used)) static int rts51x_read_status(struct us_data *us,
         u8 lun, u8 *status, int len, int *actlen)
{
 int retval;
 u8 cmnd[12] = { 0 };
 u8 *buf;

 buf = kmalloc(len, GFP_NOIO);
 if (buf == ((void*)0))
  return USB_STOR_TRANSPORT_ERROR;

 usb_stor_dbg(us, "lun = %d\n", lun);

 cmnd[0] = 0xF0;
 cmnd[1] = 0x09;

 retval = rts51x_bulk_transport(us, lun, cmnd, 12,
           buf, len, DMA_FROM_DEVICE, actlen);
 if (retval != USB_STOR_TRANSPORT_GOOD) {
  kfree(buf);
  return -EIO;
 }

 memcpy(status, buf, len);
 kfree(buf);
 return 0;
}
