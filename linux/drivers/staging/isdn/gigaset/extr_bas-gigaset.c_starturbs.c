
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct urb {int number_of_packets; TYPE_5__* iso_frame_desc; void* transfer_flags; } ;
struct TYPE_10__ {struct bas_bc_state* bas; } ;
struct bc_state {scalar_t__ proto2; int channel; int limit; struct urb* urb; int inputstate; TYPE_4__ hw; TYPE_3__* cs; } ;
struct bas_bc_state {int running; int * isooutovfl; int isooutdone; struct bc_state* isoouturbs; struct bc_state* isooutfree; TYPE_6__* isooutbuf; scalar_t__ isoinbuf; struct urb** isoinurbs; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {int offset; int length; scalar_t__ actual_length; scalar_t__ status; } ;
struct TYPE_8__ {TYPE_1__* bas; } ;
struct TYPE_9__ {TYPE_2__ hw; } ;
struct TYPE_7__ {struct usb_device* udev; } ;


 int BAS_FRAMETIME ;
 int BAS_INBUFSIZE ;
 int BAS_INURBS ;
 int BAS_MAXFRAME ;
 int BAS_NORMFRAME ;
 int BAS_NUMFRAMES ;
 int BAS_OUTBUFSIZE ;
 int BAS_OUTURBS ;
 int DEBUG_ISO ;
 int EFAULT ;
 int GFP_ATOMIC ;
 int INS_flag_hunt ;
 scalar_t__ L2_HDLC ;
 int PPP_FLAG ;
 void* URB_ISO_ASAP ;
 int dump_urb (int ,char*,struct urb*) ;
 int gigaset_isowbuf_init (TYPE_6__*,int ) ;
 int read_iso_callback ;
 int stopurbs (struct bas_bc_state*) ;
 int usb_fill_int_urb (struct urb*,struct usb_device*,int ,scalar_t__,int,int ,struct bc_state*,int ) ;
 int usb_rcvisocpipe (struct usb_device*,int) ;
 int usb_sndisocpipe (struct usb_device*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int write_iso_callback ;

__attribute__((used)) static int starturbs(struct bc_state *bcs)
{
 struct usb_device *udev = bcs->cs->hw.bas->udev;
 struct bas_bc_state *ubc = bcs->hw.bas;
 struct urb *urb;
 int j, k;
 int rc;


 if (bcs->proto2 == L2_HDLC)
  bcs->inputstate |= INS_flag_hunt;


 ubc->running = 1;
 for (k = 0; k < BAS_INURBS; k++) {
  urb = ubc->isoinurbs[k];
  if (!urb) {
   rc = -EFAULT;
   goto error;
  }
  usb_fill_int_urb(urb, udev,
     usb_rcvisocpipe(udev, 3 + 2 * bcs->channel),
     ubc->isoinbuf + k * BAS_INBUFSIZE,
     BAS_INBUFSIZE, read_iso_callback, bcs,
     BAS_FRAMETIME);

  urb->transfer_flags = URB_ISO_ASAP;
  urb->number_of_packets = BAS_NUMFRAMES;
  for (j = 0; j < BAS_NUMFRAMES; j++) {
   urb->iso_frame_desc[j].offset = j * BAS_MAXFRAME;
   urb->iso_frame_desc[j].length = BAS_MAXFRAME;
   urb->iso_frame_desc[j].status = 0;
   urb->iso_frame_desc[j].actual_length = 0;
  }

  dump_urb(DEBUG_ISO, "Initial isoc read", urb);
  rc = usb_submit_urb(urb, GFP_ATOMIC);
  if (rc != 0)
   goto error;
 }


 gigaset_isowbuf_init(ubc->isooutbuf, PPP_FLAG);


 for (k = 0; k < BAS_OUTURBS; ++k) {
  urb = ubc->isoouturbs[k].urb;
  if (!urb) {
   rc = -EFAULT;
   goto error;
  }
  usb_fill_int_urb(urb, udev,
     usb_sndisocpipe(udev, 4 + 2 * bcs->channel),
     ubc->isooutbuf->data,
     sizeof(ubc->isooutbuf->data),
     write_iso_callback, &ubc->isoouturbs[k],
     BAS_FRAMETIME);

  urb->transfer_flags = URB_ISO_ASAP;
  urb->number_of_packets = BAS_NUMFRAMES;
  for (j = 0; j < BAS_NUMFRAMES; ++j) {
   urb->iso_frame_desc[j].offset = BAS_OUTBUFSIZE;
   urb->iso_frame_desc[j].length = BAS_NORMFRAME;
   urb->iso_frame_desc[j].status = 0;
   urb->iso_frame_desc[j].actual_length = 0;
  }
  ubc->isoouturbs[k].limit = -1;
 }


 for (k = 0; k < BAS_OUTURBS - 1; ++k) {
  dump_urb(DEBUG_ISO, "Initial isoc write", urb);
  rc = usb_submit_urb(ubc->isoouturbs[k].urb, GFP_ATOMIC);
  if (rc != 0)
   goto error;
 }
 dump_urb(DEBUG_ISO, "Initial isoc write (free)", urb);
 ubc->isooutfree = &ubc->isoouturbs[BAS_OUTURBS - 1];
 ubc->isooutdone = ubc->isooutovfl = ((void*)0);
 return 0;
error:
 stopurbs(ubc);
 return rc;
}
