
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {char* protocol_name; int proto_handler; } ;


 int isd200_ata_command ;
 int isd200_host_template ;
 int isd200_unusual_dev_list ;
 struct usb_device_id const* isd200_usb_ids ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int *) ;
 int usb_stor_probe2 (struct us_data*) ;

__attribute__((used)) static int isd200_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct us_data *us;
 int result;

 result = usb_stor_probe1(&us, intf, id,
   (id - isd200_usb_ids) + isd200_unusual_dev_list,
   &isd200_host_template);
 if (result)
  return result;

 us->protocol_name = "ISD200 ATA/ATAPI";
 us->proto_handler = isd200_ata_command;

 result = usb_stor_probe2(us);
 return result;
}
