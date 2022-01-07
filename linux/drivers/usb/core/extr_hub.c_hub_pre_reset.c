
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_hub {int in_reset; } ;


 int HUB_PRE_RESET ;
 int hub_pm_barrier_for_all_ports (struct usb_hub*) ;
 int hub_quiesce (struct usb_hub*,int ) ;
 struct usb_hub* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int hub_pre_reset(struct usb_interface *intf)
{
 struct usb_hub *hub = usb_get_intfdata(intf);

 hub_quiesce(hub, HUB_PRE_RESET);
 hub->in_reset = 1;
 hub_pm_barrier_for_all_ports(hub);
 return 0;
}
