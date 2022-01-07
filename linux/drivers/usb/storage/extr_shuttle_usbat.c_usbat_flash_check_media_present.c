
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int USBAT_FLASH_MEDIA_CF ;
 int USBAT_FLASH_MEDIA_NONE ;
 unsigned char USBAT_UIO_UI0 ;
 int usb_stor_dbg (struct us_data*,char*) ;

__attribute__((used)) static int usbat_flash_check_media_present(struct us_data *us,
        unsigned char *uio)
{
 if (*uio & USBAT_UIO_UI0) {
  usb_stor_dbg(us, "no media detected\n");
  return USBAT_FLASH_MEDIA_NONE;
 }

 return USBAT_FLASH_MEDIA_CF;
}
