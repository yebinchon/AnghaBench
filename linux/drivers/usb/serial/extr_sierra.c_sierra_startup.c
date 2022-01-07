
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
struct sierra_intf_private {int susp_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sierra_intf_private* kzalloc (int,int ) ;
 scalar_t__ nmea ;
 int sierra_set_power_state (int ,int) ;
 int sierra_vsc_set_nmea (int ,int) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_data (struct usb_serial*,struct sierra_intf_private*) ;

__attribute__((used)) static int sierra_startup(struct usb_serial *serial)
{
 struct sierra_intf_private *intfdata;

 intfdata = kzalloc(sizeof(*intfdata), GFP_KERNEL);
 if (!intfdata)
  return -ENOMEM;

 spin_lock_init(&intfdata->susp_lock);

 usb_set_serial_data(serial, intfdata);


 sierra_set_power_state(serial->dev, 0x0000);


 if (nmea)
  sierra_vsc_set_nmea(serial->dev, 1);

 return 0;
}
