
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fhci_usb {TYPE_1__* hc_list; TYPE_2__* actual_frame; } ;
struct TYPE_4__ {int frame_status; scalar_t__ total_bytes; } ;
struct TYPE_3__ {int bulk_list; int ctrl_list; int intr_list; int iso_list; } ;


 int FHCI_TF_BULK ;
 int FHCI_TF_CTRL ;
 int FHCI_TF_INTR ;
 int FHCI_TF_ISO ;
 int FRAME_END_TRANSMISSION ;
 scalar_t__ rotate_frames (struct fhci_usb*) ;
 int scan_ed_list (struct fhci_usb*,int *,int ) ;

void fhci_schedule_transactions(struct fhci_usb *usb)
{
 int left = 1;

 if (usb->actual_frame->frame_status & FRAME_END_TRANSMISSION)
  if (rotate_frames(usb) != 0)
   return;

 if (usb->actual_frame->frame_status & FRAME_END_TRANSMISSION)
  return;

 if (usb->actual_frame->total_bytes == 0) {




  scan_ed_list(usb, &usb->hc_list->iso_list, FHCI_TF_ISO);





  scan_ed_list(usb, &usb->hc_list->intr_list, FHCI_TF_INTR);





  left = scan_ed_list(usb, &usb->hc_list->ctrl_list,
        FHCI_TF_CTRL);
 }





 if (left > 0)
  scan_ed_list(usb, &usb->hc_list->bulk_list, FHCI_TF_BULK);
}
