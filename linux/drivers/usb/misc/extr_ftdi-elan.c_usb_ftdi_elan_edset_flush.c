
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_ftdi {int dummy; } ;
struct platform_device {int dummy; } ;


 int ftdi_elan_edset_flush (struct usb_ftdi*,int ,void*) ;
 struct usb_ftdi* platform_device_to_usb_ftdi (struct platform_device*) ;

int usb_ftdi_elan_edset_flush(struct platform_device *pdev, u8 ed_number,
         void *endp)
{
 struct usb_ftdi *ftdi = platform_device_to_usb_ftdi(pdev);
 return ftdi_elan_edset_flush(ftdi, ed_number, endp);
}
