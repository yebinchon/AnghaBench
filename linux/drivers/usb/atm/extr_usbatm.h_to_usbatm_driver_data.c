
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {void* driver_data; } ;
struct usb_interface {int dummy; } ;


 struct usbatm_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static inline void *to_usbatm_driver_data(struct usb_interface *intf)
{
 struct usbatm_data *usbatm_instance;

 if (intf == ((void*)0))
  return ((void*)0);

 usbatm_instance = usb_get_intfdata(intf);

 if (usbatm_instance == ((void*)0))
  return ((void*)0);

 return usbatm_instance->driver_data;
}
