
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbat_info {int devicetype; } ;
struct us_data {int dummy; } ;


 int USBAT_ATA ;
 int USBAT_ATA_CMD ;
 int USBAT_DEV_FLASH ;
 int USBAT_DEV_HP8200 ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int msleep (int) ;
 int usb_stor_dbg (struct us_data*,char*) ;
 int usbat_device_reset (struct us_data*) ;
 int usbat_get_status (struct us_data*,unsigned char*) ;
 int usbat_write (struct us_data*,int ,int ,int) ;

__attribute__((used)) static int usbat_identify_device(struct us_data *us,
     struct usbat_info *info)
{
 int rc;
 unsigned char status;

 if (!us || !info)
  return USB_STOR_TRANSPORT_ERROR;

 rc = usbat_device_reset(us);
 if (rc != USB_STOR_TRANSPORT_GOOD)
  return rc;
 msleep(500);







 rc = usbat_write(us, USBAT_ATA, USBAT_ATA_CMD, 0xA1);
  if (rc != USB_STOR_XFER_GOOD)
   return USB_STOR_TRANSPORT_ERROR;

 rc = usbat_get_status(us, &status);
  if (rc != USB_STOR_XFER_GOOD)
   return USB_STOR_TRANSPORT_ERROR;


 if (status == 0xA1 || !(status & 0x01)) {

  usb_stor_dbg(us, "Detected HP8200 CDRW\n");
  info->devicetype = USBAT_DEV_HP8200;
 } else {

  usb_stor_dbg(us, "Detected Flash reader/writer\n");
  info->devicetype = USBAT_DEV_FLASH;
 }

 return USB_STOR_TRANSPORT_GOOD;
}
