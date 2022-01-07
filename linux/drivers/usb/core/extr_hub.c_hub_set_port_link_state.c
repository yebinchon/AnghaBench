
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int hdev; } ;


 int USB_PORT_FEAT_LINK_STATE ;
 int set_port_feature (int ,int,int ) ;

__attribute__((used)) static int hub_set_port_link_state(struct usb_hub *hub, int port1,
   unsigned int link_status)
{
 return set_port_feature(hub->hdev,
   port1 | (link_status << 3),
   USB_PORT_FEAT_LINK_STATE);
}
