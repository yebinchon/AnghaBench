
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct us_data {int dev_mutex; } ;


 int mutex_unlock (int *) ;
 struct us_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_stor_report_bus_reset (struct us_data*) ;

int usb_stor_post_reset(struct usb_interface *iface)
{
 struct us_data *us = usb_get_intfdata(iface);


 usb_stor_report_bus_reset(us);






 mutex_unlock(&us->dev_mutex);
 return 0;
}
