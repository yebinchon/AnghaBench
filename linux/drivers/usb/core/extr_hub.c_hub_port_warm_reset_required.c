
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hub {int warm_reset_bits; int hdev; } ;


 int USB_PORT_STAT_LINK_STATE ;
 int USB_SS_PORT_LS_COMP_MOD ;
 int USB_SS_PORT_LS_SS_INACTIVE ;
 int hub_is_superspeed (int ) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static bool hub_port_warm_reset_required(struct usb_hub *hub, int port1,
  u16 portstatus)
{
 u16 link_state;

 if (!hub_is_superspeed(hub->hdev))
  return 0;

 if (test_bit(port1, hub->warm_reset_bits))
  return 1;

 link_state = portstatus & USB_PORT_STAT_LINK_STATE;
 return link_state == USB_SS_PORT_LS_SS_INACTIVE
  || link_state == USB_SS_PORT_LS_COMP_MOD;
}
