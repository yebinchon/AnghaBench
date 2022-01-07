
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bInterval; } ;
struct usb_device {scalar_t__ speed; } ;
struct urb {int pipe; unsigned int number_of_packets; long transfer_buffer_length; unsigned int transfer_buffer; int interval; int transfer_flags; int complete; TYPE_1__* iso_frame_desc; int transfer_dma; struct usb_device* dev; } ;
struct TYPE_2__ {unsigned int offset; scalar_t__ length; } ;


 unsigned int DIV_ROUND_UP (long,unsigned int) ;
 int GFP_KERNEL ;
 int GUARD_BYTE ;
 int URB_ISO_ASAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 scalar_t__ USB_SPEED_SUPER ;
 int complicated_callback ;
 int memset (unsigned int,int ,long) ;
 scalar_t__ min (unsigned int,unsigned int) ;
 unsigned int ss_isoc_get_packet_num (struct usb_device*,int) ;
 unsigned int usb_alloc_coherent (struct usb_device*,unsigned int,int ,int *) ;
 struct urb* usb_alloc_urb (unsigned int,int ) ;
 unsigned int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 unsigned int usb_endpoint_maxp_mult (struct usb_endpoint_descriptor*) ;
 int usb_free_urb (struct urb*) ;
 scalar_t__ usb_pipein (int) ;

__attribute__((used)) static struct urb *iso_alloc_urb(
 struct usb_device *udev,
 int pipe,
 struct usb_endpoint_descriptor *desc,
 long bytes,
 unsigned offset
)
{
 struct urb *urb;
 unsigned i, maxp, packets;

 if (bytes < 0 || !desc)
  return ((void*)0);

 maxp = usb_endpoint_maxp(desc);
 if (udev->speed >= USB_SPEED_SUPER)
  maxp *= ss_isoc_get_packet_num(udev, pipe);
 else
  maxp *= usb_endpoint_maxp_mult(desc);

 packets = DIV_ROUND_UP(bytes, maxp);

 urb = usb_alloc_urb(packets, GFP_KERNEL);
 if (!urb)
  return urb;
 urb->dev = udev;
 urb->pipe = pipe;

 urb->number_of_packets = packets;
 urb->transfer_buffer_length = bytes;
 urb->transfer_buffer = usb_alloc_coherent(udev, bytes + offset,
       GFP_KERNEL,
       &urb->transfer_dma);
 if (!urb->transfer_buffer) {
  usb_free_urb(urb);
  return ((void*)0);
 }
 if (offset) {
  memset(urb->transfer_buffer, GUARD_BYTE, offset);
  urb->transfer_buffer += offset;
  urb->transfer_dma += offset;
 }


 memset(urb->transfer_buffer,
   usb_pipein(urb->pipe) ? GUARD_BYTE : 0,
   bytes);

 for (i = 0; i < packets; i++) {

  urb->iso_frame_desc[i].length = min((unsigned) bytes, maxp);
  bytes -= urb->iso_frame_desc[i].length;

  urb->iso_frame_desc[i].offset = maxp * i;
 }

 urb->complete = complicated_callback;

 urb->interval = 1 << (desc->bInterval - 1);
 urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
 return urb;
}
