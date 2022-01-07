
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wa_xfer {scalar_t__ seg_size; scalar_t__ is_inbound; TYPE_2__* wa; TYPE_1__* urb; } ;
struct usb_iso_packet_descriptor {scalar_t__ length; scalar_t__ offset; } ;
struct TYPE_4__ {int quirks; } ;
struct TYPE_3__ {int number_of_packets; struct usb_iso_packet_descriptor* iso_frame_desc; } ;


 int WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC ;

__attribute__((used)) static int __wa_seg_calculate_isoc_frame_count(struct wa_xfer *xfer,
 int isoc_frame_offset, int *total_size)
{
 int segment_size = 0, frame_count = 0;
 int index = isoc_frame_offset;
 struct usb_iso_packet_descriptor *iso_frame_desc =
  xfer->urb->iso_frame_desc;

 while ((index < xfer->urb->number_of_packets)
  && ((segment_size + iso_frame_desc[index].length)
    <= xfer->seg_size)) {







  if ((xfer->wa->quirks & WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC)
   && (xfer->is_inbound == 0)
   && (index > isoc_frame_offset)
   && ((iso_frame_desc[index - 1].offset +
    iso_frame_desc[index - 1].length) !=
    iso_frame_desc[index].offset))
   break;


  ++frame_count;
  segment_size += iso_frame_desc[index].length;


  ++index;
 }

 *total_size = segment_size;
 return frame_count;
}
