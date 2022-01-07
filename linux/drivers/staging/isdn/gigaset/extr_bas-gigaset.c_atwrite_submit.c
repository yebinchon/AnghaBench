
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct bas_cardstate* bas; } ;
struct cardstate {int dev; TYPE_1__ hw; } ;
struct TYPE_4__ {int wLength; scalar_t__ wIndex; scalar_t__ wValue; int bRequest; int bRequestType; } ;
struct bas_cardstate {int timer_atrdy; int urb_cmd_out; TYPE_2__ dr_cmd_out; int udev; } ;


 int ATRDY_TIMEOUT ;
 int BS_ATREADY ;
 int BS_ATTIMER ;
 int BS_ATWRPEND ;
 int DEBUG_OUTPUT ;
 int DEBUG_USBREQ ;
 int EBUSY ;
 int GFP_ATOMIC ;
 int HD_WRITE_ATMESSAGE ;
 int HZ ;
 int OUT_VENDOR_REQ ;
 int cpu_to_le16 (int) ;
 int dev_err (int ,char*,...) ;
 int get_usb_rcmsg (int) ;
 int gig_dbg (int ,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int update_basstate (struct bas_cardstate*,int,int) ;
 int usb_fill_control_urb (int ,int ,int ,unsigned char*,unsigned char*,int,int ,struct cardstate*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;
 int write_command_callback ;

__attribute__((used)) static int atwrite_submit(struct cardstate *cs, unsigned char *buf, int len)
{
 struct bas_cardstate *ucs = cs->hw.bas;
 int rc;

 gig_dbg(DEBUG_USBREQ, "-------> HD_WRITE_ATMESSAGE (%d)", len);

 if (update_basstate(ucs, BS_ATWRPEND, 0) & BS_ATWRPEND) {
  dev_err(cs->dev,
   "could not submit HD_WRITE_ATMESSAGE: URB busy\n");
  return -EBUSY;
 }

 ucs->dr_cmd_out.bRequestType = OUT_VENDOR_REQ;
 ucs->dr_cmd_out.bRequest = HD_WRITE_ATMESSAGE;
 ucs->dr_cmd_out.wValue = 0;
 ucs->dr_cmd_out.wIndex = 0;
 ucs->dr_cmd_out.wLength = cpu_to_le16(len);
 usb_fill_control_urb(ucs->urb_cmd_out, ucs->udev,
        usb_sndctrlpipe(ucs->udev, 0),
        (unsigned char *) &ucs->dr_cmd_out, buf, len,
        write_command_callback, cs);
 rc = usb_submit_urb(ucs->urb_cmd_out, GFP_ATOMIC);
 if (unlikely(rc)) {
  update_basstate(ucs, 0, BS_ATWRPEND);
  dev_err(cs->dev, "could not submit HD_WRITE_ATMESSAGE: %s\n",
   get_usb_rcmsg(rc));
  return rc;
 }


 if (!(update_basstate(ucs, BS_ATTIMER, BS_ATREADY) & BS_ATTIMER)) {
  gig_dbg(DEBUG_OUTPUT, "setting ATREADY timeout of %d/10 secs",
   ATRDY_TIMEOUT);
  mod_timer(&ucs->timer_atrdy, jiffies + ATRDY_TIMEOUT * HZ / 10);
 }
 return 0;
}
