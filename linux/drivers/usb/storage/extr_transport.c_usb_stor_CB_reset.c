
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int* iobuf; int ifnum; } ;


 int CB_RESET_CMD_SIZE ;
 int SEND_DIAGNOSTIC ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int US_CBI_ADSC ;
 int memset (int*,int,int ) ;
 int usb_stor_reset_common (struct us_data*,int ,int,int ,int ,int*,int ) ;

int usb_stor_CB_reset(struct us_data *us)
{
 memset(us->iobuf, 0xFF, CB_RESET_CMD_SIZE);
 us->iobuf[0] = SEND_DIAGNOSTIC;
 us->iobuf[1] = 4;
 return usb_stor_reset_common(us, US_CBI_ADSC,
     USB_TYPE_CLASS | USB_RECIP_INTERFACE,
     0, us->ifnum, us->iobuf, CB_RESET_CMD_SIZE);
}
