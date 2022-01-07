
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {char* transport_name; int transport_reset; int transport; } ;


 int karma_host_template ;
 int karma_unusual_dev_list ;
 struct usb_device_id const* karma_usb_ids ;
 int rio_karma_transport ;
 int usb_stor_Bulk_reset ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int *) ;
 int usb_stor_probe2 (struct us_data*) ;

__attribute__((used)) static int karma_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct us_data *us;
 int result;

 result = usb_stor_probe1(&us, intf, id,
   (id - karma_usb_ids) + karma_unusual_dev_list,
   &karma_host_template);
 if (result)
  return result;

 us->transport_name = "Rio Karma/Bulk";
 us->transport = rio_karma_transport;
 us->transport_reset = usb_stor_Bulk_reset;

 result = usb_stor_probe2(us);
 return result;
}
