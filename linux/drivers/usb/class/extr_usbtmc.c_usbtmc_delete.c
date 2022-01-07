
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {int usb_dev; } ;
struct kref {int dummy; } ;


 int kfree (struct usbtmc_device_data*) ;
 struct usbtmc_device_data* to_usbtmc_data (struct kref*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void usbtmc_delete(struct kref *kref)
{
 struct usbtmc_device_data *data = to_usbtmc_data(kref);

 usb_put_dev(data->usb_dev);
 kfree(data);
}
