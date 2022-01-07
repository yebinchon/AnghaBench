
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int number_of_packets; int start_frame; int transfer_buffer_length; int transfer_dma; scalar_t__ setup_packet; } ;
struct octeon_hcd {int dummy; } ;
struct cvmx_usb_transaction {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;
struct cvmx_usb_iso_packet {int dummy; } ;


 int CVMX_USB_TRANSFER_ISOCHRONOUS ;
 struct cvmx_usb_transaction* cvmx_usb_submit_transaction (struct octeon_hcd*,struct cvmx_usb_pipe*,int ,int ,int ,int ,int ,int ,struct cvmx_usb_iso_packet*,struct urb*) ;

__attribute__((used)) static struct cvmx_usb_transaction *cvmx_usb_submit_isochronous(
      struct octeon_hcd *usb,
      struct cvmx_usb_pipe *pipe,
      struct urb *urb)
{
 struct cvmx_usb_iso_packet *packets;

 packets = (struct cvmx_usb_iso_packet *)urb->setup_packet;
 return cvmx_usb_submit_transaction(usb, pipe,
        CVMX_USB_TRANSFER_ISOCHRONOUS,
        urb->transfer_dma,
        urb->transfer_buffer_length,
        0,
        urb->start_frame,
        urb->number_of_packets,
        packets, urb);
}
