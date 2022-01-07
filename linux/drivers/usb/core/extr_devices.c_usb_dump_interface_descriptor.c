
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface_descriptor {int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; int bNumEndpoints; int bAlternateSetting; int bInterfaceNumber; } ;
struct usb_interface_cache {TYPE_1__* altsetting; } ;
struct TYPE_7__ {TYPE_2__* driver; } ;
struct usb_interface {TYPE_4__* cur_altsetting; TYPE_3__ dev; } ;
struct TYPE_8__ {struct usb_interface_descriptor const desc; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {struct usb_interface_descriptor desc; } ;


 int class_decode (int ) ;
 char* format_iface ;
 int sprintf (char*,char*,char,int ,int ,int ,int ,int ,int ,int ,char const*) ;

__attribute__((used)) static char *usb_dump_interface_descriptor(char *start, char *end,
     const struct usb_interface_cache *intfc,
     const struct usb_interface *iface,
     int setno)
{
 const struct usb_interface_descriptor *desc;
 const char *driver_name = "";
 int active = 0;

 if (start > end)
  return start;
 desc = &intfc->altsetting[setno].desc;
 if (iface) {
  driver_name = (iface->dev.driver
    ? iface->dev.driver->name
    : "(none)");
  active = (desc == &iface->cur_altsetting->desc);
 }
 start += sprintf(start, format_iface,
    active ? '*' : ' ',
    desc->bInterfaceNumber,
    desc->bAlternateSetting,
    desc->bNumEndpoints,
    desc->bInterfaceClass,
    class_decode(desc->bInterfaceClass),
    desc->bInterfaceSubClass,
    desc->bInterfaceProtocol,
    driver_name);
 return start;
}
