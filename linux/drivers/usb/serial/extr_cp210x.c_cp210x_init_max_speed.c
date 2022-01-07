
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct cp210x_serial_private {int partnum; int use_actual_rate; void* max_speed; void* min_speed; } ;
typedef void* speed_t ;
 int cp210x_interface_num (struct usb_serial*) ;
 struct cp210x_serial_private* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void cp210x_init_max_speed(struct usb_serial *serial)
{
 struct cp210x_serial_private *priv = usb_get_serial_data(serial);
 bool use_actual_rate = 0;
 speed_t min = 300;
 speed_t max;

 switch (priv->partnum) {
 case 136:
  max = 921600;
  break;
 case 135:
 case 131:
  max = 1000000;
  break;
 case 130:
  use_actual_rate = 1;
  max = 2000000;
  break;
 case 128:
  max = 2000000;
  break;
 case 129:
  if (cp210x_interface_num(serial) == 0) {
   use_actual_rate = 1;
   max = 2000000;
  } else {
   min = 2400;
   max = 921600;
  }
  break;
 case 132:
 case 133:
 case 134:
  use_actual_rate = 1;
  max = 3000000;
  break;
 default:
  max = 2000000;
  break;
 }

 priv->min_speed = min;
 priv->max_speed = max;
 priv->use_actual_rate = use_actual_rate;
}
