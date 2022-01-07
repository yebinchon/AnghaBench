
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {scalar_t__ bInterfaceClass; } ;


 scalar_t__ USB_CLASS_AUDIO ;

__attribute__((used)) static bool is_audio(struct usb_interface_descriptor *desc)
{
 return desc->bInterfaceClass == USB_CLASS_AUDIO;
}
