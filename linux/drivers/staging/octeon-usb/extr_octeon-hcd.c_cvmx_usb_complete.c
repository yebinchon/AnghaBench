
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_hcd {int idle_pipes; struct cvmx_usb_transaction* active_split; } ;
struct cvmx_usb_transaction {scalar_t__ type; int iso_number_packets; int urb; scalar_t__ actual_bytes; int node; int stage; TYPE_1__* iso_packets; } ;
struct cvmx_usb_pipe {int node; int transactions; } ;
typedef enum cvmx_usb_status { ____Placeholder_cvmx_usb_status } cvmx_usb_status ;
struct TYPE_2__ {int status; scalar_t__ length; } ;


 int CVMX_USB_STAGE_NON_CONTROL ;
 int CVMX_USB_STATUS_OK ;
 scalar_t__ CVMX_USB_TRANSFER_ISOCHRONOUS ;
 int kfree (struct cvmx_usb_transaction*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int octeon_usb_urb_complete_callback (struct octeon_hcd*,int,struct cvmx_usb_pipe*,struct cvmx_usb_transaction*,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cvmx_usb_complete(struct octeon_hcd *usb,
         struct cvmx_usb_pipe *pipe,
         struct cvmx_usb_transaction *transaction,
         enum cvmx_usb_status complete_code)
{

 if (usb->active_split == transaction)
  usb->active_split = ((void*)0);





 if (unlikely(transaction->type == CVMX_USB_TRANSFER_ISOCHRONOUS)) {

  transaction->iso_packets[0].length = transaction->actual_bytes;
  transaction->iso_packets[0].status = complete_code;





  if ((transaction->iso_number_packets > 1) &&
      (complete_code == CVMX_USB_STATUS_OK)) {

   transaction->actual_bytes = 0;

   transaction->iso_number_packets--;

   transaction->iso_packets++;
   transaction->stage = CVMX_USB_STAGE_NON_CONTROL;
   return;
  }
 }


 list_del(&transaction->node);
 if (list_empty(&pipe->transactions))
  list_move_tail(&pipe->node, &usb->idle_pipes);
 octeon_usb_urb_complete_callback(usb, complete_code, pipe,
      transaction,
      transaction->actual_bytes,
      transaction->urb);
 kfree(transaction);
}
