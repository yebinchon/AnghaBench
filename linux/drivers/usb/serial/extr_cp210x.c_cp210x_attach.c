
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {TYPE_1__* interface; } ;
struct cp210x_serial_private {int partnum; } ;
struct TYPE_2__ {int dev; } ;


 int CP210X_GET_PARTNUM ;
 int CP210X_PARTNUM_UNKNOWN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REQTYPE_DEVICE_TO_HOST ;
 int cp210x_gpio_init (struct usb_serial*) ;
 int cp210x_init_max_speed (struct usb_serial*) ;
 int cp210x_read_vendor_block (struct usb_serial*,int ,int ,int *,int) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 struct cp210x_serial_private* kzalloc (int,int ) ;
 int usb_set_serial_data (struct usb_serial*,struct cp210x_serial_private*) ;

__attribute__((used)) static int cp210x_attach(struct usb_serial *serial)
{
 int result;
 struct cp210x_serial_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 result = cp210x_read_vendor_block(serial, REQTYPE_DEVICE_TO_HOST,
       CP210X_GET_PARTNUM, &priv->partnum,
       sizeof(priv->partnum));
 if (result < 0) {
  dev_warn(&serial->interface->dev,
    "querying part number failed\n");
  priv->partnum = CP210X_PARTNUM_UNKNOWN;
 }

 usb_set_serial_data(serial, priv);

 cp210x_init_max_speed(serial);

 result = cp210x_gpio_init(serial);
 if (result < 0) {
  dev_err(&serial->interface->dev, "GPIO initialisation failed: %d\n",
    result);
 }

 return 0;
}
