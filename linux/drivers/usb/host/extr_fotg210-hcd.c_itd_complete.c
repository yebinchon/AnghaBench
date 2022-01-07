
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_iso_packet_descriptor {int status; void* actual_length; } ;
struct usb_device {int devpath; } ;
struct urb {int number_of_packets; struct usb_device* dev; int actual_length; int pipe; int error_count; struct usb_iso_packet_descriptor* iso_frame_desc; } ;
struct fotg210_itd {int* index; int itd_list; struct urb* urb; scalar_t__* hw_transaction; struct fotg210_iso_stream* stream; } ;
struct fotg210_iso_stream {int bEndpointAddress; int free_list; int td_list; scalar_t__ bandwidth; } ;
struct fotg210_hcd {int cached_itd_list; int isoc_count; } ;
struct TYPE_3__ {int bandwidth_allocated; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int ECOMM ;
 int ENOSR ;
 int EOVERFLOW ;
 int EPROTO ;
 int EXDEV ;
 int FOTG210_ISOC_ACTIVE ;
 int FOTG210_ISOC_BABBLE ;
 int FOTG210_ISOC_BUF_ERR ;
 int ISO_ERRS ;
 int USB_DIR_IN ;
 int disable_periodic (struct fotg210_hcd*) ;
 int fotg210_dbg (struct fotg210_hcd*,char*,int ,int,char*) ;
 void* fotg210_itdlen (struct urb*,struct usb_iso_packet_descriptor*,int) ;
 TYPE_2__* fotg210_to_hcd (struct fotg210_hcd*) ;
 int fotg210_urb_done (struct fotg210_hcd*,struct urb*,int ) ;
 int hc32_to_cpup (struct fotg210_hcd*,scalar_t__*) ;
 scalar_t__ likely (int) ;
 scalar_t__ list_empty (int *) ;
 int list_is_singular (int *) ;
 int list_move_tail (int *,int *) ;
 int list_splice_tail_init (int *,int *) ;
 int start_free_itds (struct fotg210_hcd*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static bool itd_complete(struct fotg210_hcd *fotg210, struct fotg210_itd *itd)
{
 struct urb *urb = itd->urb;
 struct usb_iso_packet_descriptor *desc;
 u32 t;
 unsigned uframe;
 int urb_index = -1;
 struct fotg210_iso_stream *stream = itd->stream;
 struct usb_device *dev;
 bool retval = 0;


 for (uframe = 0; uframe < 8; uframe++) {
  if (likely(itd->index[uframe] == -1))
   continue;
  urb_index = itd->index[uframe];
  desc = &urb->iso_frame_desc[urb_index];

  t = hc32_to_cpup(fotg210, &itd->hw_transaction[uframe]);
  itd->hw_transaction[uframe] = 0;


  if (unlikely(t & ISO_ERRS)) {
   urb->error_count++;
   if (t & FOTG210_ISOC_BUF_ERR)
    desc->status = usb_pipein(urb->pipe)
     ? -ENOSR
     : -ECOMM;
   else if (t & FOTG210_ISOC_BABBLE)
    desc->status = -EOVERFLOW;
   else
    desc->status = -EPROTO;


   if (!(t & FOTG210_ISOC_BABBLE)) {
    desc->actual_length =
     fotg210_itdlen(urb, desc, t);
    urb->actual_length += desc->actual_length;
   }
  } else if (likely((t & FOTG210_ISOC_ACTIVE) == 0)) {
   desc->status = 0;
   desc->actual_length = fotg210_itdlen(urb, desc, t);
   urb->actual_length += desc->actual_length;
  } else {

   desc->status = -EXDEV;
  }
 }


 if (likely((urb_index + 1) != urb->number_of_packets))
  goto done;







 dev = urb->dev;
 fotg210_urb_done(fotg210, urb, 0);
 retval = 1;
 urb = ((void*)0);

 --fotg210->isoc_count;
 disable_periodic(fotg210);

 if (unlikely(list_is_singular(&stream->td_list))) {
  fotg210_to_hcd(fotg210)->self.bandwidth_allocated
    -= stream->bandwidth;
  fotg210_dbg(fotg210,
   "deschedule devp %s ep%d%s-iso\n",
   dev->devpath, stream->bEndpointAddress & 0x0f,
   (stream->bEndpointAddress & USB_DIR_IN) ? "in" : "out");
 }

done:
 itd->urb = ((void*)0);


 list_move_tail(&itd->itd_list, &stream->free_list);


 if (list_empty(&stream->td_list)) {
  list_splice_tail_init(&stream->free_list,
    &fotg210->cached_itd_list);
  start_free_itds(fotg210);
 }

 return retval;
}
