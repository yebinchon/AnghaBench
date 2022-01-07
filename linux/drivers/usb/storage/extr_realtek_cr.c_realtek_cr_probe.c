
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct us_data {int dummy; } ;


 int dev_dbg (int *,char*) ;
 int realtek_cr_host_template ;
 struct usb_device_id const* realtek_cr_ids ;
 int realtek_cr_unusual_dev_list ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int *) ;
 int usb_stor_probe2 (struct us_data*) ;

__attribute__((used)) static int realtek_cr_probe(struct usb_interface *intf,
       const struct usb_device_id *id)
{
 struct us_data *us;
 int result;

 dev_dbg(&intf->dev, "Probe Realtek Card Reader!\n");

 result = usb_stor_probe1(&us, intf, id,
     (id - realtek_cr_ids) +
     realtek_cr_unusual_dev_list,
     &realtek_cr_host_template);
 if (result)
  return result;

 result = usb_stor_probe2(us);

 return result;
}
