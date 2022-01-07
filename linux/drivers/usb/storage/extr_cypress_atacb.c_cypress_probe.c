
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int iManufacturer; int iProduct; int iSerialNumber; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct us_data {char* protocol_name; int proto_handler; } ;


 int cypress_atacb_passthrough ;
 int cypress_host_template ;
 int cypress_unusual_dev_list ;
 struct usb_device_id const* cypress_usb_ids ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int *) ;
 int usb_stor_probe2 (struct us_data*) ;
 int usb_stor_transparent_scsi_command ;

__attribute__((used)) static int cypress_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct us_data *us;
 int result;
 struct usb_device *device;

 result = usb_stor_probe1(&us, intf, id,
   (id - cypress_usb_ids) + cypress_unusual_dev_list,
   &cypress_host_template);
 if (result)
  return result;





 device = interface_to_usbdev(intf);
 if (device->descriptor.iManufacturer != 0x38 ||
     device->descriptor.iProduct != 0x4e ||
     device->descriptor.iSerialNumber != 0x64) {
  us->protocol_name = "Transparent SCSI with Cypress ATACB";
  us->proto_handler = cypress_atacb_passthrough;
 } else {
  us->protocol_name = "Transparent SCSI";
  us->proto_handler = usb_stor_transparent_scsi_command;
 }

 result = usb_stor_probe2(us);
 return result;
}
