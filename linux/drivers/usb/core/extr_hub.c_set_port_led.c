
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int dev; } ;
struct usb_hub {int hdev; struct usb_port** ports; } ;


 int USB_PORT_FEAT_INDICATOR ;
 int dev_dbg (int *,char*,int ,int) ;
 int set_port_feature (int ,int,int ) ;
 int to_led_name (int) ;

__attribute__((used)) static void set_port_led(struct usb_hub *hub, int port1, int selector)
{
 struct usb_port *port_dev = hub->ports[port1 - 1];
 int status;

 status = set_port_feature(hub->hdev, (selector << 8) | port1,
   USB_PORT_FEAT_INDICATOR);
 dev_dbg(&port_dev->dev, "indicator %s status %d\n",
  to_led_name(selector), status);
}
