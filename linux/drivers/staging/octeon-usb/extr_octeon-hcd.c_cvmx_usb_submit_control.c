
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct usb_ctrlrequest {int bRequestType; int wLength; } ;
struct urb {int transfer_buffer_length; int transfer_dma; int setup_dma; } ;
struct octeon_hcd {int dummy; } ;
struct cvmx_usb_transaction {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;


 int CVMX_USB_TRANSFER_CONTROL ;
 int USB_DIR_IN ;
 struct usb_ctrlrequest* cvmx_phys_to_ptr (int ) ;
 struct cvmx_usb_transaction* cvmx_usb_submit_transaction (struct octeon_hcd*,struct cvmx_usb_pipe*,int ,int ,int,int ,int ,int ,int *,struct urb*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static struct cvmx_usb_transaction *cvmx_usb_submit_control(
      struct octeon_hcd *usb,
      struct cvmx_usb_pipe *pipe,
      struct urb *urb)
{
 int buffer_length = urb->transfer_buffer_length;
 u64 control_header = urb->setup_dma;
 struct usb_ctrlrequest *header = cvmx_phys_to_ptr(control_header);

 if ((header->bRequestType & USB_DIR_IN) == 0)
  buffer_length = le16_to_cpu(header->wLength);

 return cvmx_usb_submit_transaction(usb, pipe,
        CVMX_USB_TRANSFER_CONTROL,
        urb->transfer_dma, buffer_length,
        control_header,
        0,
        0,
        ((void*)0),
        urb);
}
