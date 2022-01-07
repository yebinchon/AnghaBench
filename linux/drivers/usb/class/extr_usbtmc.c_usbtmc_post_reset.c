
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {int io_mutex; } ;
struct usb_interface {int dummy; } ;


 int mutex_unlock (int *) ;
 struct usbtmc_device_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usbtmc_post_reset(struct usb_interface *intf)
{
 struct usbtmc_device_data *data = usb_get_intfdata(intf);

 mutex_unlock(&data->io_mutex);

 return 0;
}
