
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* driver; } ;
struct usb_interface {TYPE_5__ dev; TYPE_3__* cur_altsetting; } ;
struct TYPE_8__ {int bNumInterfaces; } ;
struct usb_host_config {struct usb_interface** interface; TYPE_1__ desc; } ;
struct usb_dev_state {TYPE_6__* dev; int ifclaimed; scalar_t__ privileges_dropped; } ;
struct TYPE_14__ {int comm; } ;
struct TYPE_13__ {int dev; struct usb_host_config* actconfig; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_9__ {int bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_2__ desc; } ;


 int EACCES ;
 TYPE_7__* current ;
 int dev_warn (int *,char*,int,int ,int ) ;
 int test_bit (int,int *) ;
 scalar_t__ usb_interface_claimed (struct usb_interface*) ;
 int usb_reset_device (TYPE_6__*) ;

__attribute__((used)) static int proc_resetdevice(struct usb_dev_state *ps)
{
 struct usb_host_config *actconfig = ps->dev->actconfig;
 struct usb_interface *interface;
 int i, number;





 if (ps->privileges_dropped && actconfig) {
  for (i = 0; i < actconfig->desc.bNumInterfaces; ++i) {
   interface = actconfig->interface[i];
   number = interface->cur_altsetting->desc.bInterfaceNumber;
   if (usb_interface_claimed(interface) &&
     !test_bit(number, &ps->ifclaimed)) {
    dev_warn(&ps->dev->dev,
     "usbfs: interface %d claimed by %s while '%s' resets device\n",
     number, interface->dev.driver->name, current->comm);
    return -EACCES;
   }
  }
 }

 return usb_reset_device(ps->dev);
}
