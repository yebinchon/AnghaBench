
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fhci_usb {TYPE_2__* actual_frame; struct fhci_hcd* fhci; } ;
struct fhci_hcd {TYPE_1__* pram; } ;
struct TYPE_4__ {int frame_num; scalar_t__ total_bytes; int frame_status; int tds_list; } ;
struct TYPE_3__ {int frame_num; } ;


 int EINVAL ;
 int FRAME_IS_PREPARED ;
 int fhci_flush_actual_frame (struct fhci_usb*) ;
 int in_be16 (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static u32 rotate_frames(struct fhci_usb *usb)
{
 struct fhci_hcd *fhci = usb->fhci;

 if (!list_empty(&usb->actual_frame->tds_list)) {
  if ((((in_be16(&fhci->pram->frame_num) & 0x07ff) -
        usb->actual_frame->frame_num) & 0x7ff) > 5)
   fhci_flush_actual_frame(usb);
  else
   return -EINVAL;
 }

 usb->actual_frame->frame_status = FRAME_IS_PREPARED;
 usb->actual_frame->frame_num = in_be16(&fhci->pram->frame_num) & 0x7ff;
 usb->actual_frame->total_bytes = 0;

 return 0;
}
