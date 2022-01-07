
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int dummy; } ;


 int hub_port_debounce (struct usb_hub*,int,int) ;

__attribute__((used)) static inline int hub_port_debounce_be_connected(struct usb_hub *hub,
  int port1)
{
 return hub_port_debounce(hub, port1, 1);
}
