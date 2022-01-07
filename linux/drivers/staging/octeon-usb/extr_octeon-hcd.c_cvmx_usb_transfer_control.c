
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int epdir; } ;
union cvmx_usbcx_hccharx {TYPE_1__ s; } ;
struct usb_ctrlrequest {int wLength; } ;
struct octeon_hcd {int dummy; } ;
struct cvmx_usb_transaction {int stage; int actual_bytes; int control_header; } ;
struct cvmx_usb_pipe {int pid_toggle; int max_packet; } ;
 int CVMX_USB_STATUS_ERROR ;
 int CVMX_USB_STATUS_OK ;
 struct usb_ctrlrequest* cvmx_phys_to_ptr (int ) ;
 int cvmx_usb_complete (struct octeon_hcd*,struct cvmx_usb_pipe*,struct cvmx_usb_transaction*,int ) ;
 int cvmx_usb_pipe_needs_split (struct octeon_hcd*,struct cvmx_usb_pipe*) ;

__attribute__((used)) static void cvmx_usb_transfer_control(struct octeon_hcd *usb,
          struct cvmx_usb_pipe *pipe,
          struct cvmx_usb_transaction *transaction,
          union cvmx_usbcx_hccharx usbc_hcchar,
          int buffer_space_left,
          int bytes_in_last_packet)
{
 switch (transaction->stage) {
 case 133:
 case 132:

  cvmx_usb_complete(usb, pipe, transaction,
      CVMX_USB_STATUS_ERROR);
  break;
 case 131:
  pipe->pid_toggle = 1;
  if (cvmx_usb_pipe_needs_split(usb, pipe)) {
   transaction->stage =
    130;
  } else {
   struct usb_ctrlrequest *header =
    cvmx_phys_to_ptr(transaction->control_header);
   if (header->wLength)
    transaction->stage = 135;
   else
    transaction->stage = 129;
  }
  break;
 case 130:
  {
   struct usb_ctrlrequest *header =
    cvmx_phys_to_ptr(transaction->control_header);
   if (header->wLength)
    transaction->stage = 135;
   else
    transaction->stage = 129;
  }
  break;
 case 135:
  if (cvmx_usb_pipe_needs_split(usb, pipe)) {
   transaction->stage = 134;






   if (!usbc_hcchar.s.epdir) {
    if (buffer_space_left < pipe->max_packet)
     transaction->actual_bytes +=
      buffer_space_left;
    else
     transaction->actual_bytes +=
      pipe->max_packet;
   }
  } else if ((buffer_space_left == 0) ||
      (bytes_in_last_packet < pipe->max_packet)) {
   pipe->pid_toggle = 1;
   transaction->stage = 129;
  }
  break;
 case 134:
  if ((buffer_space_left == 0) ||
      (bytes_in_last_packet < pipe->max_packet)) {
   pipe->pid_toggle = 1;
   transaction->stage = 129;
  } else {
   transaction->stage = 135;
  }
  break;
 case 129:
  if (cvmx_usb_pipe_needs_split(usb, pipe))
   transaction->stage =
    128;
  else
   cvmx_usb_complete(usb, pipe, transaction,
       CVMX_USB_STATUS_OK);
  break;
 case 128:
  cvmx_usb_complete(usb, pipe, transaction, CVMX_USB_STATUS_OK);
  break;
 }
}
