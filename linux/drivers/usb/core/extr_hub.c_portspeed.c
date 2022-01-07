
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int hdev; } ;


 int USB_PORT_STAT_HIGH_SPEED ;
 int USB_PORT_STAT_LOW_SPEED ;
 scalar_t__ hub_is_superspeed (int ) ;
 scalar_t__ hub_is_superspeedplus (int ) ;

__attribute__((used)) static inline char *portspeed(struct usb_hub *hub, int portstatus)
{
 if (hub_is_superspeedplus(hub->hdev))
  return "10.0 Gb/s";
 if (hub_is_superspeed(hub->hdev))
  return "5.0 Gb/s";
 if (portstatus & USB_PORT_STAT_HIGH_SPEED)
  return "480 Mb/s";
 else if (portstatus & USB_PORT_STAT_LOW_SPEED)
  return "1.5 Mb/s";
 else
  return "12 Mb/s";
}
