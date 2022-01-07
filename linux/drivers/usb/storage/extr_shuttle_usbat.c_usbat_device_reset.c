
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int USBAT_UIO_1 ;
 int USBAT_UIO_DRVRST ;
 int USBAT_UIO_EPAD ;
 int USBAT_UIO_OE0 ;
 int USBAT_UIO_OE1 ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int usbat_write_user_io (struct us_data*,int,int) ;

__attribute__((used)) static int usbat_device_reset(struct us_data *us)
{
 int rc;





 rc = usbat_write_user_io(us,
        USBAT_UIO_DRVRST | USBAT_UIO_OE1 | USBAT_UIO_OE0,
        USBAT_UIO_EPAD | USBAT_UIO_1);
 if (rc != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;





 rc = usbat_write_user_io(us,
        USBAT_UIO_OE1 | USBAT_UIO_OE0,
        USBAT_UIO_EPAD | USBAT_UIO_1);
 if (rc != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 return USB_STOR_TRANSPORT_GOOD;
}
