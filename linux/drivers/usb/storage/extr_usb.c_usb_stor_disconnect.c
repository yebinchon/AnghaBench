
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct us_data {int dummy; } ;


 int quiesce_and_remove_host (struct us_data*) ;
 int release_everything (struct us_data*) ;
 struct us_data* usb_get_intfdata (struct usb_interface*) ;

void usb_stor_disconnect(struct usb_interface *intf)
{
 struct us_data *us = usb_get_intfdata(intf);

 quiesce_and_remove_host(us);
 release_everything(us);
}
