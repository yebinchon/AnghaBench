
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int power_bits; } ;
struct usb_device {int dummy; } ;


 int USB_PORT_FEAT_POWER ;
 int clear_bit (int,int ) ;
 int set_bit (int,int ) ;
 int set_port_feature (struct usb_device*,int,int ) ;
 int usb_clear_port_feature (struct usb_device*,int,int ) ;

int usb_hub_set_port_power(struct usb_device *hdev, struct usb_hub *hub,
      int port1, bool set)
{
 int ret;

 if (set)
  ret = set_port_feature(hdev, port1, USB_PORT_FEAT_POWER);
 else
  ret = usb_clear_port_feature(hdev, port1, USB_PORT_FEAT_POWER);

 if (ret)
  return ret;

 if (set)
  set_bit(port1, hub->power_bits);
 else
  clear_bit(port1, hub->power_bits);
 return 0;
}
