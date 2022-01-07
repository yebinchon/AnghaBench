
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wa_xfer {unsigned int seg_size; TYPE_1__* urb; scalar_t__ is_dma; struct wa_seg** seg; } ;
struct wa_seg {int dummy; } ;
struct urb {unsigned int transfer_buffer_length; struct wa_seg* context; int * transfer_buffer; scalar_t__ num_sgs; int * sg; int transfer_flags; scalar_t__ transfer_dma; scalar_t__ num_mapped_sgs; int status; } ;
struct TYPE_2__ {int sg; int * transfer_buffer; scalar_t__ transfer_dma; } ;


 int BUG_ON (int) ;
 int EINPROGRESS ;
 int ENOMEM ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int * wa_xfer_create_subset_sg (int ,unsigned int,unsigned int,scalar_t__*) ;

__attribute__((used)) static int wa_populate_buf_in_urb(struct urb *buf_in_urb, struct wa_xfer *xfer,
 unsigned int seg_idx, unsigned int bytes_transferred)
{
 int result = 0;
 struct wa_seg *seg = xfer->seg[seg_idx];

 BUG_ON(buf_in_urb->status == -EINPROGRESS);

 buf_in_urb->num_mapped_sgs = 0;

 if (xfer->is_dma) {
  buf_in_urb->transfer_dma = xfer->urb->transfer_dma
   + (seg_idx * xfer->seg_size);
  buf_in_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  buf_in_urb->transfer_buffer = ((void*)0);
  buf_in_urb->sg = ((void*)0);
  buf_in_urb->num_sgs = 0;
 } else {

  buf_in_urb->transfer_flags &= ~URB_NO_TRANSFER_DMA_MAP;

  if (xfer->urb->transfer_buffer) {
   buf_in_urb->transfer_buffer =
    xfer->urb->transfer_buffer
    + (seg_idx * xfer->seg_size);
   buf_in_urb->sg = ((void*)0);
   buf_in_urb->num_sgs = 0;
  } else {




   buf_in_urb->sg = wa_xfer_create_subset_sg(
    xfer->urb->sg,
    seg_idx * xfer->seg_size,
    bytes_transferred,
    &(buf_in_urb->num_sgs));

   if (!(buf_in_urb->sg)) {
    buf_in_urb->num_sgs = 0;
    result = -ENOMEM;
   }
   buf_in_urb->transfer_buffer = ((void*)0);
  }
 }
 buf_in_urb->transfer_buffer_length = bytes_transferred;
 buf_in_urb->context = seg;

 return result;
}
