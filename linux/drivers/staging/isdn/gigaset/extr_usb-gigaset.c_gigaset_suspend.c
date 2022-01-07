
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {TYPE_2__ hw; int write_tasklet; scalar_t__ connected; } ;
typedef int pm_message_t ;
struct TYPE_3__ {int bulk_out_urb; int read_urb; } ;


 int DEBUG_SUSPEND ;
 int gig_dbg (int ,char*) ;
 int tasklet_kill (int *) ;
 struct cardstate* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int gigaset_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct cardstate *cs = usb_get_intfdata(intf);


 cs->connected = 0;
 usb_kill_urb(cs->hw.usb->read_urb);
 tasklet_kill(&cs->write_tasklet);
 usb_kill_urb(cs->hw.usb->bulk_out_urb);

 gig_dbg(DEBUG_SUSPEND, "suspend complete");
 return 0;
}
