
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int busnum; int controller; } ;


 int E2BIG ;
 int GFP_KERNEL ;
 int USB_MAXBUS ;
 int dev_info (int ,char*,int) ;
 int idr_alloc (int *,struct usb_bus*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ) ;
 int usb_bus_idr ;
 int usb_bus_idr_lock ;
 int usb_notify_add_bus (struct usb_bus*) ;
 int usbcore_name ;

__attribute__((used)) static int usb_register_bus(struct usb_bus *bus)
{
 int result = -E2BIG;
 int busnum;

 mutex_lock(&usb_bus_idr_lock);
 busnum = idr_alloc(&usb_bus_idr, bus, 1, USB_MAXBUS, GFP_KERNEL);
 if (busnum < 0) {
  pr_err("%s: failed to get bus number\n", usbcore_name);
  goto error_find_busnum;
 }
 bus->busnum = busnum;
 mutex_unlock(&usb_bus_idr_lock);

 usb_notify_add_bus(bus);

 dev_info (bus->controller, "new USB bus registered, assigned bus "
    "number %d\n", bus->busnum);
 return 0;

error_find_busnum:
 mutex_unlock(&usb_bus_idr_lock);
 return result;
}
