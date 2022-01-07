
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int io_mutex; int errors; } ;
struct usb_interface {int dummy; } ;


 int EPIPE ;
 int mutex_unlock (int *) ;
 struct usb_skel* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int skel_post_reset(struct usb_interface *intf)
{
 struct usb_skel *dev = usb_get_intfdata(intf);


 dev->errors = -EPIPE;
 mutex_unlock(&dev->io_mutex);

 return 0;
}
