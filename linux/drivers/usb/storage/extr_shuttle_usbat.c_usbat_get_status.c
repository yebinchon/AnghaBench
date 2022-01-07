
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int USBAT_ATA ;
 int USBAT_ATA_STATUS ;
 int usb_stor_dbg (struct us_data*,char*,unsigned char) ;
 int usbat_read (struct us_data*,int ,int ,unsigned char*) ;

__attribute__((used)) static int usbat_get_status(struct us_data *us, unsigned char *status)
{
 int rc;
 rc = usbat_read(us, USBAT_ATA, USBAT_ATA_STATUS, status);

 usb_stor_dbg(us, "0x%02X\n", *status);
 return rc;
}
