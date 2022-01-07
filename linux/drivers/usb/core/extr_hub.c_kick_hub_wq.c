
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_hub {int kref; int events; int intfdev; scalar_t__ disconnected; } ;


 int hub_release ;
 int hub_wq ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 scalar_t__ queue_work (int ,int *) ;
 struct usb_interface* to_usb_interface (int ) ;
 int usb_autopm_get_interface_no_resume (struct usb_interface*) ;
 int usb_autopm_put_interface_async (struct usb_interface*) ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static void kick_hub_wq(struct usb_hub *hub)
{
 struct usb_interface *intf;

 if (hub->disconnected || work_pending(&hub->events))
  return;
 intf = to_usb_interface(hub->intfdev);
 usb_autopm_get_interface_no_resume(intf);
 kref_get(&hub->kref);

 if (queue_work(hub_wq, &hub->events))
  return;


 usb_autopm_put_interface_async(intf);
 kref_put(&hub->kref, hub_release);
}
