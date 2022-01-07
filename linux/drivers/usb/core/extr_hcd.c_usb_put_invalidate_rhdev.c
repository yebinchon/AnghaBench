
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct usb_device* root_hub; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_port_peer_mutex ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void usb_put_invalidate_rhdev(struct usb_hcd *hcd)
{
 struct usb_device *rhdev;

 mutex_lock(&usb_port_peer_mutex);
 rhdev = hcd->self.root_hub;
 hcd->self.root_hub = ((void*)0);
 mutex_unlock(&usb_port_peer_mutex);
 usb_put_dev(rhdev);
}
