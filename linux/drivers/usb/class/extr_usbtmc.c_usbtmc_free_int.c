
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {int kref; int * iin_urb; int * iin_buffer; int iin_ep_present; } ;


 int kfree (int *) ;
 int kref_put (int *,int ) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;
 int usbtmc_delete ;

__attribute__((used)) static void usbtmc_free_int(struct usbtmc_device_data *data)
{
 if (!data->iin_ep_present || !data->iin_urb)
  return;
 usb_kill_urb(data->iin_urb);
 kfree(data->iin_buffer);
 data->iin_buffer = ((void*)0);
 usb_free_urb(data->iin_urb);
 data->iin_urb = ((void*)0);
 kref_put(&data->kref, usbtmc_delete);
}
