
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_cardstate {int * udev; int * interface; int * bulk_out_buffer; int * rcvbuf; int * bulk_out_urb; int * read_urb; } ;
struct TYPE_2__ {struct usb_cardstate* usb; } ;
struct cardstate {int * dev; int write_tasklet; TYPE_1__ hw; } ;


 int dev_info (int *,char*) ;
 int gigaset_freecs (struct cardstate*) ;
 int gigaset_stop (struct cardstate*) ;
 int kfree (int *) ;
 int tasklet_kill (int *) ;
 int usb_free_urb (int *) ;
 struct cardstate* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int *) ;
 int usb_put_dev (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void gigaset_disconnect(struct usb_interface *interface)
{
 struct cardstate *cs;
 struct usb_cardstate *ucs;

 cs = usb_get_intfdata(interface);
 ucs = cs->hw.usb;

 dev_info(cs->dev, "disconnecting Gigaset USB adapter\n");

 usb_kill_urb(ucs->read_urb);

 gigaset_stop(cs);

 usb_set_intfdata(interface, ((void*)0));
 tasklet_kill(&cs->write_tasklet);

 usb_kill_urb(ucs->bulk_out_urb);

 kfree(ucs->bulk_out_buffer);
 usb_free_urb(ucs->bulk_out_urb);
 kfree(ucs->rcvbuf);
 usb_free_urb(ucs->read_urb);
 ucs->read_urb = ucs->bulk_out_urb = ((void*)0);
 ucs->rcvbuf = ucs->bulk_out_buffer = ((void*)0);

 usb_put_dev(ucs->udev);
 ucs->interface = ((void*)0);
 ucs->udev = ((void*)0);
 cs->dev = ((void*)0);
 gigaset_freecs(cs);
}
