
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wa_xfer {TYPE_1__* urb; scalar_t__ is_dma; } ;
struct wa_seg {TYPE_2__* dto_urb; } ;
struct TYPE_4__ {size_t transfer_buffer_length; int * sg; scalar_t__ num_sgs; int * transfer_buffer; scalar_t__ num_mapped_sgs; int transfer_flags; scalar_t__ transfer_dma; } ;
struct TYPE_3__ {int sg; int * transfer_buffer; scalar_t__ transfer_dma; } ;


 int ENOMEM ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int * wa_xfer_create_subset_sg (int ,size_t,size_t,scalar_t__*) ;

__attribute__((used)) static int __wa_populate_dto_urb(struct wa_xfer *xfer,
 struct wa_seg *seg, size_t buf_itr_offset, size_t buf_itr_size)
{
 int result = 0;

 if (xfer->is_dma) {
  seg->dto_urb->transfer_dma =
   xfer->urb->transfer_dma + buf_itr_offset;
  seg->dto_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  seg->dto_urb->sg = ((void*)0);
  seg->dto_urb->num_sgs = 0;
 } else {

  seg->dto_urb->transfer_flags &=
   ~URB_NO_TRANSFER_DMA_MAP;

  seg->dto_urb->num_mapped_sgs = 0;

  if (xfer->urb->transfer_buffer) {
   seg->dto_urb->transfer_buffer =
    xfer->urb->transfer_buffer +
    buf_itr_offset;
   seg->dto_urb->sg = ((void*)0);
   seg->dto_urb->num_sgs = 0;
  } else {
   seg->dto_urb->transfer_buffer = ((void*)0);







   seg->dto_urb->sg = wa_xfer_create_subset_sg(
    xfer->urb->sg,
    buf_itr_offset, buf_itr_size,
    &(seg->dto_urb->num_sgs));
   if (!(seg->dto_urb->sg))
    result = -ENOMEM;
  }
 }
 seg->dto_urb->transfer_buffer_length = buf_itr_size;

 return result;
}
