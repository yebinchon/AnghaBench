
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbat_info {int sense_key; int sense_asc; int sense_ascq; } ;
struct us_data {unsigned char* iobuf; } ;


 int UNIT_ATTENTION ;
 int USBAT_FLASH_MEDIA_CHANGED ;
 int USBAT_FLASH_MEDIA_NONE ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int msleep (int) ;
 int usbat_device_enable_cdt (struct us_data*) ;
 int usbat_device_reset (struct us_data*) ;
 int usbat_flash_check_media_changed (struct us_data*,unsigned char*) ;
 int usbat_flash_check_media_present (struct us_data*,unsigned char*) ;
 int usbat_read_user_io (struct us_data*,unsigned char*) ;

__attribute__((used)) static int usbat_flash_check_media(struct us_data *us,
       struct usbat_info *info)
{
 int rc;
 unsigned char *uio = us->iobuf;

 rc = usbat_read_user_io(us, uio);
 if (rc != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;


 rc = usbat_flash_check_media_present(us, uio);
 if (rc == USBAT_FLASH_MEDIA_NONE) {
  info->sense_key = 0x02;
  info->sense_asc = 0x3A;
  info->sense_ascq = 0x00;
  return USB_STOR_TRANSPORT_FAILED;
 }


 rc = usbat_flash_check_media_changed(us, uio);
 if (rc == USBAT_FLASH_MEDIA_CHANGED) {


  rc = usbat_device_reset(us);
  if (rc != USB_STOR_TRANSPORT_GOOD)
   return rc;
  rc = usbat_device_enable_cdt(us);
  if (rc != USB_STOR_TRANSPORT_GOOD)
   return rc;

  msleep(50);

  rc = usbat_read_user_io(us, uio);
  if (rc != USB_STOR_XFER_GOOD)
   return USB_STOR_TRANSPORT_ERROR;

  info->sense_key = UNIT_ATTENTION;
  info->sense_asc = 0x28;
  info->sense_ascq = 0x00;
  return USB_STOR_TRANSPORT_FAILED;
 }

 return USB_STOR_TRANSPORT_GOOD;
}
