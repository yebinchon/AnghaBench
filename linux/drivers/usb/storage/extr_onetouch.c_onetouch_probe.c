
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {int dummy; } ;


 int onetouch_host_template ;
 int onetouch_unusual_dev_list ;
 struct usb_device_id const* onetouch_usb_ids ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int *) ;
 int usb_stor_probe2 (struct us_data*) ;

__attribute__((used)) static int onetouch_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct us_data *us;
 int result;

 result = usb_stor_probe1(&us, intf, id,
   (id - onetouch_usb_ids) + onetouch_unusual_dev_list,
   &onetouch_host_template);
 if (result)
  return result;



 result = usb_stor_probe2(us);
 return result;
}
