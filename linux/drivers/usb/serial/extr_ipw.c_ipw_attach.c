
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_intf_private {int susp_lock; } ;
struct usb_serial {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb_wwan_intf_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_data (struct usb_serial*,struct usb_wwan_intf_private*) ;

__attribute__((used)) static int ipw_attach(struct usb_serial *serial)
{
 struct usb_wwan_intf_private *data;

 data = kzalloc(sizeof(struct usb_wwan_intf_private), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 spin_lock_init(&data->susp_lock);
 usb_set_serial_data(serial, data);
 return 0;
}
