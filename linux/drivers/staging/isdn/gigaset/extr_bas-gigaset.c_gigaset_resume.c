
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int dev; TYPE_1__ hw; } ;
struct bas_cardstate {scalar_t__ retry_int_in; int urb_int_in; } ;


 int BS_SUSPEND ;
 int DEBUG_SUSPEND ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int ) ;
 int get_usb_rcmsg (int) ;
 int gig_dbg (int ,char*) ;
 int update_basstate (struct bas_cardstate*,int ,int ) ;
 struct cardstate* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int gigaset_resume(struct usb_interface *intf)
{
 struct cardstate *cs = usb_get_intfdata(intf);
 struct bas_cardstate *ucs = cs->hw.bas;
 int rc;


 rc = usb_submit_urb(ucs->urb_int_in, GFP_KERNEL);
 if (rc) {
  dev_err(cs->dev, "could not resubmit interrupt URB: %s\n",
   get_usb_rcmsg(rc));
  return rc;
 }
 ucs->retry_int_in = 0;


 update_basstate(ucs, 0, BS_SUSPEND);

 gig_dbg(DEBUG_SUSPEND, "resume complete");
 return 0;
}
