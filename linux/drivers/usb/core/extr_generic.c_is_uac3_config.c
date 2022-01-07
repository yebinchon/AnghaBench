
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {scalar_t__ bInterfaceProtocol; } ;


 scalar_t__ UAC_VERSION_3 ;

__attribute__((used)) static bool is_uac3_config(struct usb_interface_descriptor *desc)
{
 return desc->bInterfaceProtocol == UAC_VERSION_3;
}
