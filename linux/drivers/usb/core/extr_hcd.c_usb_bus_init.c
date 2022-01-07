
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_devmap {int dummy; } ;
struct usb_bus {int devnum_next; int busnum; int devnum_next_mutex; scalar_t__ bandwidth_isoc_reqs; scalar_t__ bandwidth_int_reqs; scalar_t__ bandwidth_allocated; int * root_hub; int devmap; } ;


 int memset (int *,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static void usb_bus_init (struct usb_bus *bus)
{
 memset (&bus->devmap, 0, sizeof(struct usb_devmap));

 bus->devnum_next = 1;

 bus->root_hub = ((void*)0);
 bus->busnum = -1;
 bus->bandwidth_allocated = 0;
 bus->bandwidth_int_reqs = 0;
 bus->bandwidth_isoc_reqs = 0;
 mutex_init(&bus->devnum_next_mutex);
}
