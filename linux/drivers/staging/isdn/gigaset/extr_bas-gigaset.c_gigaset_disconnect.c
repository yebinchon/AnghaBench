
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int * dev; scalar_t__ bcs; TYPE_1__ hw; } ;
struct bas_cardstate {int * udev; int * interface; scalar_t__ rcvbuf_size; int * rcvbuf; int int_in_wq; int timer_int_in; int timer_cmd_in; int timer_atrdy; int timer_ctrl; scalar_t__ basstate; } ;


 int BAS_CHANNELS ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dev_info (int *,char*) ;
 int freeurbs (struct cardstate*) ;
 int gigaset_bchannel_down (scalar_t__) ;
 int gigaset_freecs (struct cardstate*) ;
 int gigaset_stop (struct cardstate*) ;
 int kfree (int *) ;
 struct cardstate* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void gigaset_disconnect(struct usb_interface *interface)
{
 struct cardstate *cs;
 struct bas_cardstate *ucs;
 int j;

 cs = usb_get_intfdata(interface);

 ucs = cs->hw.bas;

 dev_info(cs->dev, "disconnecting Gigaset base\n");


 ucs->basstate = 0;


 for (j = 0; j < BAS_CHANNELS; ++j)
  gigaset_bchannel_down(cs->bcs + j);


 gigaset_stop(cs);


 del_timer_sync(&ucs->timer_ctrl);
 del_timer_sync(&ucs->timer_atrdy);
 del_timer_sync(&ucs->timer_cmd_in);
 del_timer_sync(&ucs->timer_int_in);
 cancel_work_sync(&ucs->int_in_wq);
 freeurbs(cs);
 usb_set_intfdata(interface, ((void*)0));
 kfree(ucs->rcvbuf);
 ucs->rcvbuf = ((void*)0);
 ucs->rcvbuf_size = 0;
 usb_put_dev(ucs->udev);
 ucs->interface = ((void*)0);
 ucs->udev = ((void*)0);
 cs->dev = ((void*)0);
 gigaset_freecs(cs);
}
