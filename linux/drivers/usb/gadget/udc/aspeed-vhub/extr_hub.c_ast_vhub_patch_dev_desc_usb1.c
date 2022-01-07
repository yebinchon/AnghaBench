
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_descriptor {scalar_t__ bDeviceProtocol; int bcdUSB; } ;


 int cpu_to_le16 (int) ;

__attribute__((used)) static void ast_vhub_patch_dev_desc_usb1(struct usb_device_descriptor *desc)
{
 desc->bcdUSB = cpu_to_le16(0x0100);
 desc->bDeviceProtocol = 0;
}
