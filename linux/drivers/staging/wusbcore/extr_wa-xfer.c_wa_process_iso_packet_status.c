
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


struct wahc {int dti_isoc_xfer_in_progress; size_t dti_isoc_xfer_seg; int dti_state; int active_buf_in_urbs; struct urb* buf_in_urbs; TYPE_4__* wusb; scalar_t__ dti_buf; TYPE_1__* usb_iface; } ;
struct wa_xfer_packet_status_len_hwaiso {int PacketLength; int PacketStatus; } ;
struct wa_xfer_packet_status_hwaiso {scalar_t__ bPacketType; struct wa_xfer_packet_status_len_hwaiso* PacketStatus; int wLength; } ;
struct wa_xfer {size_t segs; int lock; TYPE_5__* urb; scalar_t__ is_inbound; TYPE_2__* ep; struct wa_seg** seg; } ;
struct wa_seg {unsigned int isoc_frame_count; unsigned int isoc_frame_offset; unsigned int isoc_frame_index; int status; } ;
struct wa_rpipe {int dummy; } ;
struct usb_iso_packet_descriptor {int actual_length; int status; } ;
struct urb {size_t actual_length; int transfer_buffer; } ;
struct device {int dummy; } ;
struct TYPE_12__ {TYPE_3__* driver; } ;
struct TYPE_11__ {struct usb_iso_packet_descriptor* iso_frame_desc; int start_frame; } ;
struct TYPE_10__ {TYPE_6__ usb_hcd; } ;
struct TYPE_9__ {int (* get_frame_number ) (TYPE_6__*) ;} ;
struct TYPE_8__ {struct wa_rpipe* hcpriv; } ;
struct TYPE_7__ {struct device dev; } ;


 int GFP_ATOMIC ;
 int PacketStatus ;
 int WA_DTI_BUF_IN_DATA_PENDING ;
 int WA_DTI_TRANSFER_RESULT_PENDING ;
 int WA_MAX_BUF_IN_URBS ;
 int WA_SEG_DONE ;
 int WA_SEG_DTI_PENDING ;
 scalar_t__ WA_XFER_ISO_PACKET_STATUS ;
 int __wa_populate_buf_in_urb_isoc (struct wahc*,struct urb*,struct wa_xfer*,struct wa_seg*) ;
 unsigned int __wa_xfer_mark_seg_as_done (struct wa_xfer*,struct wa_seg*,int ) ;
 int dev_dbg (struct device*,char*,size_t,int ) ;
 int dev_err (struct device*,char*,int,...) ;
 int le16_to_cpu (int ) ;
 unsigned int rpipe_avail_inc (struct wa_rpipe*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t struct_size (struct wa_xfer_packet_status_hwaiso*,int ,unsigned int) ;
 int stub1 (TYPE_6__*) ;
 scalar_t__ unlikely (int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wa_reset_all (struct wahc*) ;
 int wa_xfer_completion (struct wa_xfer*) ;
 int wa_xfer_delayed_run (struct wa_rpipe*) ;
 struct wa_xfer* wa_xfer_get_by_id (struct wahc*,int) ;
 int wa_xfer_put (struct wa_xfer*) ;
 int wa_xfer_status_to_errno (int) ;

__attribute__((used)) static int wa_process_iso_packet_status(struct wahc *wa, struct urb *urb)
{
 struct device *dev = &wa->usb_iface->dev;
 struct wa_xfer_packet_status_hwaiso *packet_status;
 struct wa_xfer_packet_status_len_hwaiso *status_array;
 struct wa_xfer *xfer;
 unsigned long flags;
 struct wa_seg *seg;
 struct wa_rpipe *rpipe;
 unsigned done = 0, dti_busy = 0, data_frame_count = 0, seg_index;
 unsigned first_frame_index = 0, rpipe_ready = 0;
 size_t expected_size;


 dev_dbg(dev, "DTI: isoc packet status %d bytes at %p\n",
  urb->actual_length, urb->transfer_buffer);
 packet_status = (struct wa_xfer_packet_status_hwaiso *)(wa->dti_buf);
 if (packet_status->bPacketType != WA_XFER_ISO_PACKET_STATUS) {
  dev_err(dev, "DTI Error: isoc packet status--bad type 0x%02x\n",
   packet_status->bPacketType);
  goto error_parse_buffer;
 }
 xfer = wa_xfer_get_by_id(wa, wa->dti_isoc_xfer_in_progress);
 if (xfer == ((void*)0)) {
  dev_err(dev, "DTI Error: isoc packet status--unknown xfer 0x%08x\n",
   wa->dti_isoc_xfer_in_progress);
  goto error_parse_buffer;
 }
 spin_lock_irqsave(&xfer->lock, flags);
 if (unlikely(wa->dti_isoc_xfer_seg >= xfer->segs))
  goto error_bad_seg;
 seg = xfer->seg[wa->dti_isoc_xfer_seg];
 rpipe = xfer->ep->hcpriv;
 expected_size = struct_size(packet_status, PacketStatus,
        seg->isoc_frame_count);
 if (urb->actual_length != expected_size) {
  dev_err(dev, "DTI Error: isoc packet status--bad urb length (%d bytes vs %zu needed)\n",
   urb->actual_length, expected_size);
  goto error_bad_seg;
 }
 if (le16_to_cpu(packet_status->wLength) != expected_size) {
  dev_err(dev, "DTI Error: isoc packet status--bad length %u\n",
   le16_to_cpu(packet_status->wLength));
  goto error_bad_seg;
 }

 status_array = packet_status->PacketStatus;
 xfer->urb->start_frame =
  wa->wusb->usb_hcd.driver->get_frame_number(&wa->wusb->usb_hcd);
 for (seg_index = 0; seg_index < seg->isoc_frame_count; ++seg_index) {
  struct usb_iso_packet_descriptor *iso_frame_desc =
   xfer->urb->iso_frame_desc;
  const int xfer_frame_index =
   seg->isoc_frame_offset + seg_index;

  iso_frame_desc[xfer_frame_index].status =
   wa_xfer_status_to_errno(
   le16_to_cpu(status_array[seg_index].PacketStatus));
  iso_frame_desc[xfer_frame_index].actual_length =
   le16_to_cpu(status_array[seg_index].PacketLength);

  if (iso_frame_desc[xfer_frame_index].actual_length > 0) {

   if (!data_frame_count)
    first_frame_index = seg_index;
   ++data_frame_count;
  }
 }

 if (xfer->is_inbound && data_frame_count) {
  int result, total_frames_read = 0, urb_index = 0;
  struct urb *buf_in_urb;


  seg->status = WA_SEG_DTI_PENDING;


  seg->isoc_frame_index = first_frame_index;

  do {
   int urb_frame_index, urb_frame_count;
   struct usb_iso_packet_descriptor *iso_frame_desc;

   buf_in_urb = &(wa->buf_in_urbs[urb_index]);
   urb_frame_count = __wa_populate_buf_in_urb_isoc(wa,
    buf_in_urb, xfer, seg);

   seg->isoc_frame_index += urb_frame_count;
   total_frames_read += urb_frame_count;

   ++(wa->active_buf_in_urbs);
   result = usb_submit_urb(buf_in_urb, GFP_ATOMIC);


   urb_frame_index =
    seg->isoc_frame_offset + seg->isoc_frame_index;
   iso_frame_desc =
    &(xfer->urb->iso_frame_desc[urb_frame_index]);
   while ((seg->isoc_frame_index <
      seg->isoc_frame_count) &&
     (iso_frame_desc->actual_length == 0)) {
    ++(seg->isoc_frame_index);
    ++iso_frame_desc;
   }
   ++urb_index;

  } while ((result == 0) && (urb_index < WA_MAX_BUF_IN_URBS)
    && (seg->isoc_frame_index <
      seg->isoc_frame_count));

  if (result < 0) {
   --(wa->active_buf_in_urbs);
   dev_err(dev, "DTI Error: Could not submit buf in URB (%d)",
    result);
   wa_reset_all(wa);
  } else if (data_frame_count > total_frames_read)

   dti_busy = 1;
 } else {

  rpipe_ready = rpipe_avail_inc(rpipe);
  done = __wa_xfer_mark_seg_as_done(xfer, seg, WA_SEG_DONE);
 }
 spin_unlock_irqrestore(&xfer->lock, flags);
 if (dti_busy)
  wa->dti_state = WA_DTI_BUF_IN_DATA_PENDING;
 else
  wa->dti_state = WA_DTI_TRANSFER_RESULT_PENDING;
 if (done)
  wa_xfer_completion(xfer);
 if (rpipe_ready)
  wa_xfer_delayed_run(rpipe);
 wa_xfer_put(xfer);
 return dti_busy;

error_bad_seg:
 spin_unlock_irqrestore(&xfer->lock, flags);
 wa_xfer_put(xfer);
error_parse_buffer:
 return dti_busy;
}
