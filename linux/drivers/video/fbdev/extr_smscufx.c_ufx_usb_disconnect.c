
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ufx_data {int virtualized; scalar_t__ fb_count; int kref; int free_framebuffer_work; int usb_active; } ;


 int atomic_set (int *,int ) ;
 int kref_put (int *,int ) ;
 int pr_debug (char*) ;
 int schedule_delayed_work (int *,int ) ;
 int ufx_free ;
 struct ufx_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ufx_usb_disconnect(struct usb_interface *interface)
{
 struct ufx_data *dev;

 dev = usb_get_intfdata(interface);

 pr_debug("USB disconnect starting\n");


 dev->virtualized = 1;


 atomic_set(&dev->usb_active, 0);

 usb_set_intfdata(interface, ((void*)0));


 if (dev->fb_count == 0)
  schedule_delayed_work(&dev->free_framebuffer_work, 0);


 kref_put(&dev->kref, ufx_free);


}
