
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int ezusb_fx1 ;
 int ezusb_ihex_firmware_download (struct usb_device*,int ,char const*) ;

int ezusb_fx1_ihex_firmware_download(struct usb_device *dev,
         const char *firmware_path)
{
 return ezusb_ihex_firmware_download(dev, ezusb_fx1, firmware_path);
}
