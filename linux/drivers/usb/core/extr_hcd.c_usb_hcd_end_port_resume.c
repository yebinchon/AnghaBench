
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {unsigned int resuming_ports; TYPE_1__* root_hub; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_put_noidle (int *) ;

void usb_hcd_end_port_resume(struct usb_bus *bus, int portnum)
{
 unsigned bit = 1 << portnum;

 if (bus->resuming_ports & bit) {
  bus->resuming_ports &= ~bit;
  pm_runtime_put_noidle(&bus->root_hub->dev);
 }
}
