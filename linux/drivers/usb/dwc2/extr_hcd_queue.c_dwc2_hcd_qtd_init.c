
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qtd {scalar_t__ in_process; scalar_t__ isoc_split_offset; int isoc_split_pos; scalar_t__ complete_split; int control_phase; int data_toggle; struct dwc2_hcd_urb* urb; } ;
struct dwc2_hcd_urb {struct dwc2_qtd* qtd; int pipe_info; } ;


 int DWC2_CONTROL_SETUP ;
 int DWC2_HCSPLT_XACTPOS_ALL ;
 int DWC2_HC_PID_DATA1 ;
 scalar_t__ USB_ENDPOINT_XFER_CONTROL ;
 scalar_t__ dwc2_hcd_get_pipe_type (int *) ;

void dwc2_hcd_qtd_init(struct dwc2_qtd *qtd, struct dwc2_hcd_urb *urb)
{
 qtd->urb = urb;
 if (dwc2_hcd_get_pipe_type(&urb->pipe_info) ==
   USB_ENDPOINT_XFER_CONTROL) {





  qtd->data_toggle = DWC2_HC_PID_DATA1;
  qtd->control_phase = DWC2_CONTROL_SETUP;
 }


 qtd->complete_split = 0;
 qtd->isoc_split_pos = DWC2_HCSPLT_XACTPOS_ALL;
 qtd->isoc_split_offset = 0;
 qtd->in_process = 0;


 urb->qtd = qtd;
}
