
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_intf_private {int use_send_setup; int susp_lock; } ;
struct usb_serial {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb_wwan_intf_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ usb_get_serial_data (struct usb_serial*) ;
 int usb_set_serial_data (struct usb_serial*,struct usb_wwan_intf_private*) ;

__attribute__((used)) static int qc_attach(struct usb_serial *serial)
{
 struct usb_wwan_intf_private *data;
 bool sendsetup;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 sendsetup = !!(unsigned long)(usb_get_serial_data(serial));
 if (sendsetup)
  data->use_send_setup = 1;

 spin_lock_init(&data->susp_lock);

 usb_set_serial_data(serial, data);

 return 0;
}
