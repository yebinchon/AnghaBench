
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pcwd_private {int mtx; scalar_t__ exists; } ;
struct usb_interface {int dummy; } ;


 int cards_found ;
 int disconnect_mutex ;
 int misc_deregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nowayout ;
 int pr_info (char*) ;
 int unregister_reboot_notifier (int *) ;
 struct usb_pcwd_private* usb_get_intfdata (struct usb_interface*) ;
 int usb_pcwd_delete (struct usb_pcwd_private*) ;
 int usb_pcwd_miscdev ;
 int usb_pcwd_notifier ;
 int usb_pcwd_stop (struct usb_pcwd_private*) ;
 int usb_pcwd_temperature_miscdev ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_pcwd_disconnect(struct usb_interface *interface)
{
 struct usb_pcwd_private *usb_pcwd;


 mutex_lock(&disconnect_mutex);

 usb_pcwd = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));

 mutex_lock(&usb_pcwd->mtx);


 if (!nowayout)
  usb_pcwd_stop(usb_pcwd);


 usb_pcwd->exists = 0;


 misc_deregister(&usb_pcwd_miscdev);
 misc_deregister(&usb_pcwd_temperature_miscdev);
 unregister_reboot_notifier(&usb_pcwd_notifier);

 mutex_unlock(&usb_pcwd->mtx);


 usb_pcwd_delete(usb_pcwd);

 cards_found--;

 mutex_unlock(&disconnect_mutex);

 pr_info("USB PC Watchdog disconnected\n");
}
