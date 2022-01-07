
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wa_xfer {TYPE_4__* urb; TYPE_1__* wa; } ;
struct wa_seg {TYPE_2__* dto_urb; int isoc_size; } ;
struct TYPE_8__ {TYPE_3__* iso_frame_desc; scalar_t__ transfer_dma; } ;
struct TYPE_7__ {int length; scalar_t__ offset; } ;
struct TYPE_6__ {int transfer_buffer_length; scalar_t__ transfer_dma; scalar_t__ num_sgs; int * sg; int transfer_flags; } ;
struct TYPE_5__ {int quirks; } ;


 int URB_NO_TRANSFER_DMA_MAP ;
 int WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC ;

__attribute__((used)) static void __wa_populate_dto_urb_isoc(struct wa_xfer *xfer,
 struct wa_seg *seg, int curr_iso_frame)
{
 seg->dto_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 seg->dto_urb->sg = ((void*)0);
 seg->dto_urb->num_sgs = 0;

 seg->dto_urb->transfer_dma = xfer->urb->transfer_dma +
  xfer->urb->iso_frame_desc[curr_iso_frame].offset;

 if (xfer->wa->quirks & WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC)
  seg->dto_urb->transfer_buffer_length = seg->isoc_size;
 else
  seg->dto_urb->transfer_buffer_length =
   xfer->urb->iso_frame_desc[curr_iso_frame].length;
}
