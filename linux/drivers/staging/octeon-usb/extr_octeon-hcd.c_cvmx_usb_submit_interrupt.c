
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer_length; int transfer_dma; } ;
struct octeon_hcd {int dummy; } ;
struct cvmx_usb_transaction {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;


 int CVMX_USB_TRANSFER_INTERRUPT ;
 struct cvmx_usb_transaction* cvmx_usb_submit_transaction (struct octeon_hcd*,struct cvmx_usb_pipe*,int ,int ,int ,int ,int ,int ,int *,struct urb*) ;

__attribute__((used)) static struct cvmx_usb_transaction *cvmx_usb_submit_interrupt(
      struct octeon_hcd *usb,
      struct cvmx_usb_pipe *pipe,
      struct urb *urb)
{
 return cvmx_usb_submit_transaction(usb, pipe,
        CVMX_USB_TRANSFER_INTERRUPT,
        urb->transfer_dma,
        urb->transfer_buffer_length,
        0,
        0,
        0,
        ((void*)0),
        urb);
}
