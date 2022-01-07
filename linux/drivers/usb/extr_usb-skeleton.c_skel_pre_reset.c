
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int io_mutex; } ;
struct usb_interface {int dummy; } ;


 int mutex_lock (int *) ;
 int skel_draw_down (struct usb_skel*) ;
 struct usb_skel* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int skel_pre_reset(struct usb_interface *intf)
{
 struct usb_skel *dev = usb_get_intfdata(intf);

 mutex_lock(&dev->io_mutex);
 skel_draw_down(dev);

 return 0;
}
