
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int busnum; int controller; } ;


 int dev_info (int ,char*,int ) ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_bus_idr ;
 int usb_bus_idr_lock ;
 int usb_notify_remove_bus (struct usb_bus*) ;

__attribute__((used)) static void usb_deregister_bus (struct usb_bus *bus)
{
 dev_info (bus->controller, "USB bus %d deregistered\n", bus->busnum);






 mutex_lock(&usb_bus_idr_lock);
 idr_remove(&usb_bus_idr, bus->busnum);
 mutex_unlock(&usb_bus_idr_lock);

 usb_notify_remove_bus(bus);
}
