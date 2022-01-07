
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hub {int dummy; } ;


 int HUB_PORT_STATUS ;
 int hub_ext_port_status (struct usb_hub*,int,int ,int *,int *,int *) ;

__attribute__((used)) static int hub_port_status(struct usb_hub *hub, int port1,
  u16 *status, u16 *change)
{
 return hub_ext_port_status(hub, port1, HUB_PORT_STATUS,
       status, change, ((void*)0));
}
