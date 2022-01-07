
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nak; } ;
union cvmx_usbcx_hcintx {TYPE_1__ s; } ;
struct octeon_hcd {int dummy; } ;
struct cvmx_usb_transaction {scalar_t__ stage; } ;
struct cvmx_usb_pipe {int max_packet; scalar_t__ device_speed; scalar_t__ transfer_dir; int flags; } ;


 scalar_t__ CVMX_USB_DIRECTION_OUT ;
 int CVMX_USB_PIPE_FLAGS_NEED_PING ;
 scalar_t__ CVMX_USB_SPEED_HIGH ;
 scalar_t__ CVMX_USB_STAGE_NON_CONTROL ;
 scalar_t__ CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE ;
 int CVMX_USB_STATUS_OK ;
 int cvmx_usb_complete (struct octeon_hcd*,struct cvmx_usb_pipe*,struct cvmx_usb_transaction*,int ) ;
 scalar_t__ cvmx_usb_pipe_needs_split (struct octeon_hcd*,struct cvmx_usb_pipe*) ;

__attribute__((used)) static void cvmx_usb_transfer_bulk(struct octeon_hcd *usb,
       struct cvmx_usb_pipe *pipe,
       struct cvmx_usb_transaction *transaction,
       union cvmx_usbcx_hcintx usbc_hcint,
       int buffer_space_left,
       int bytes_in_last_packet)
{





 if (cvmx_usb_pipe_needs_split(usb, pipe)) {
  if (transaction->stage == CVMX_USB_STAGE_NON_CONTROL)
   transaction->stage =
    CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE;
  else if (buffer_space_left &&
    (bytes_in_last_packet == pipe->max_packet))
   transaction->stage = CVMX_USB_STAGE_NON_CONTROL;
  else
   cvmx_usb_complete(usb, pipe, transaction,
       CVMX_USB_STATUS_OK);
 } else {
  if ((pipe->device_speed == CVMX_USB_SPEED_HIGH) &&
      (pipe->transfer_dir == CVMX_USB_DIRECTION_OUT) &&
      (usbc_hcint.s.nak))
   pipe->flags |= CVMX_USB_PIPE_FLAGS_NEED_PING;
  if (!buffer_space_left ||
      (bytes_in_last_packet < pipe->max_packet))
   cvmx_usb_complete(usb, pipe, transaction,
       CVMX_USB_STATUS_OK);
 }
}
