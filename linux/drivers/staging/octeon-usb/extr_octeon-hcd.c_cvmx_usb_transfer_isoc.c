
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_hcd {int dummy; } ;
struct cvmx_usb_transaction {scalar_t__ stage; } ;
struct cvmx_usb_pipe {scalar_t__ transfer_dir; int max_packet; scalar_t__ interval; int next_tx_frame; } ;


 scalar_t__ CVMX_USB_DIRECTION_OUT ;
 scalar_t__ CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE ;
 int CVMX_USB_STATUS_OK ;
 int cvmx_usb_complete (struct octeon_hcd*,struct cvmx_usb_pipe*,struct cvmx_usb_transaction*,int ) ;
 scalar_t__ cvmx_usb_pipe_needs_split (struct octeon_hcd*,struct cvmx_usb_pipe*) ;

__attribute__((used)) static void cvmx_usb_transfer_isoc(struct octeon_hcd *usb,
       struct cvmx_usb_pipe *pipe,
       struct cvmx_usb_transaction *transaction,
       int buffer_space_left,
       int bytes_in_last_packet,
       int bytes_this_transfer)
{
 if (cvmx_usb_pipe_needs_split(usb, pipe)) {






  if (pipe->transfer_dir == CVMX_USB_DIRECTION_OUT) {





   if (!buffer_space_left || (bytes_this_transfer < 188)) {
    pipe->next_tx_frame += pipe->interval;
    cvmx_usb_complete(usb, pipe, transaction,
        CVMX_USB_STATUS_OK);
   }
   return;
  }
  if (transaction->stage ==
      CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE) {




   if ((buffer_space_left == 0) ||
       (bytes_in_last_packet < pipe->max_packet)) {
    pipe->next_tx_frame += pipe->interval;
    cvmx_usb_complete(usb, pipe, transaction,
        CVMX_USB_STATUS_OK);
   }
  } else {
   transaction->stage =
    CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE;
  }
 } else {
  pipe->next_tx_frame += pipe->interval;
  cvmx_usb_complete(usb, pipe, transaction, CVMX_USB_STATUS_OK);
 }
}
