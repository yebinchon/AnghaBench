
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface_cache {int num_altsetting; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int bNumInterfaces; } ;
struct usb_host_config {struct usb_interface** interface; struct usb_interface_cache** intf_cache; TYPE_1__ desc; int ** intf_assoc; } ;


 int USB_MAXIADS ;
 int sprintf (char*,char*) ;
 char* usb_dump_config_descriptor (char*,char*,TYPE_1__*,int,int) ;
 char* usb_dump_iad_descriptor (char*,char*,int *) ;
 char* usb_dump_interface (int,char*,char*,struct usb_interface_cache*,struct usb_interface*,int) ;

__attribute__((used)) static char *usb_dump_config(int speed, char *start, char *end,
        const struct usb_host_config *config, int active)
{
 int i, j;
 struct usb_interface_cache *intfc;
 struct usb_interface *interface;

 if (start > end)
  return start;
 if (!config)

  return start + sprintf(start, "(null Cfg. desc.)\n");
 start = usb_dump_config_descriptor(start, end, &config->desc, active,
   speed);
 for (i = 0; i < USB_MAXIADS; i++) {
  if (config->intf_assoc[i] == ((void*)0))
   break;
  start = usb_dump_iad_descriptor(start, end,
     config->intf_assoc[i]);
 }
 for (i = 0; i < config->desc.bNumInterfaces; i++) {
  intfc = config->intf_cache[i];
  interface = config->interface[i];
  for (j = 0; j < intfc->num_altsetting; j++) {
   if (start > end)
    return start;
   start = usb_dump_interface(speed,
    start, end, intfc, interface, j);
  }
 }
 return start;
}
