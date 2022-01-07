
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {scalar_t__ iin_urb; scalar_t__ iin_ep_present; } ;
struct usb_interface {int dev; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct usbtmc_device_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (scalar_t__,int ) ;

__attribute__((used)) static int usbtmc_resume(struct usb_interface *intf)
{
 struct usbtmc_device_data *data = usb_get_intfdata(intf);
 int retcode = 0;

 if (data->iin_ep_present && data->iin_urb)
  retcode = usb_submit_urb(data->iin_urb, GFP_KERNEL);
 if (retcode)
  dev_err(&intf->dev, "Failed to submit iin_urb\n");

 return retcode;
}
