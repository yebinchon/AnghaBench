
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int ifnum; } ;


 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int US_BULK_RESET_REQUEST ;
 int usb_stor_reset_common (struct us_data*,int ,int,int ,int ,int *,int ) ;

int usb_stor_Bulk_reset(struct us_data *us)
{
 return usb_stor_reset_common(us, US_BULK_RESET_REQUEST,
     USB_TYPE_CLASS | USB_RECIP_INTERFACE,
     0, us->ifnum, ((void*)0), 0);
}
