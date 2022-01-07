
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {struct usb_descriptor_header** fs_descriptors; struct usb_descriptor_header** hs_descriptors; struct usb_descriptor_header** ss_descriptors; struct usb_descriptor_header** ssp_descriptors; } ;
struct usb_descriptor_header {int dummy; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;






__attribute__((used)) static struct usb_descriptor_header **
function_descriptors(struct usb_function *f,
       enum usb_device_speed speed)
{
 struct usb_descriptor_header **descriptors;






 switch (speed) {
 case 128:
  descriptors = f->ssp_descriptors;
  if (descriptors)
   break;

 case 129:
  descriptors = f->ss_descriptors;
  if (descriptors)
   break;

 case 130:
  descriptors = f->hs_descriptors;
  if (descriptors)
   break;

 default:
  descriptors = f->fs_descriptors;
 }






 return descriptors;
}
