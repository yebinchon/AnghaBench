
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_qtd {size_t isoc_frame_index; int isoc_split_offset; int complete_split; struct dwc2_hcd_urb* urb; } ;
struct TYPE_4__ {int host_dma; } ;
struct dwc2_hsotg {int dev; TYPE_2__ params; } ;
struct dwc2_host_chan {int ep_is_in; int ep_type; TYPE_1__* qh; } ;
struct dwc2_hcd_urb {size_t packet_count; int error_count; struct dwc2_hcd_iso_packet_desc* iso_descs; } ;
struct dwc2_hcd_iso_packet_desc {void* actual_length; int status; } ;
typedef enum dwc2_halt_status { ____Placeholder_dwc2_halt_status } dwc2_halt_status ;
struct TYPE_3__ {int do_split; } ;





 int DWC2_HC_XFER_NO_HALT_STATUS ;
 int DWC2_HC_XFER_URB_COMPLETE ;

 int ECOMM ;
 int ENOSR ;
 int EOVERFLOW ;
 int EPROTO ;
 int USB_ENDPOINT_XFER_ISOC ;
 int dev_err (int ,char*,int) ;
 void* dwc2_get_actual_xfer_length (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int,int *) ;
 int dwc2_host_complete (struct dwc2_hsotg*,struct dwc2_qtd*,int ) ;

__attribute__((used)) static enum dwc2_halt_status dwc2_update_isoc_urb_state(
  struct dwc2_hsotg *hsotg, struct dwc2_host_chan *chan,
  int chnum, struct dwc2_qtd *qtd,
  enum dwc2_halt_status halt_status)
{
 struct dwc2_hcd_iso_packet_desc *frame_desc;
 struct dwc2_hcd_urb *urb = qtd->urb;

 if (!urb)
  return DWC2_HC_XFER_NO_HALT_STATUS;

 frame_desc = &urb->iso_descs[qtd->isoc_frame_index];

 switch (halt_status) {
 case 130:
  frame_desc->status = 0;
  frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
     chan, chnum, qtd, halt_status, ((void*)0));
  break;
 case 129:
  urb->error_count++;
  if (chan->ep_is_in)
   frame_desc->status = -ENOSR;
  else
   frame_desc->status = -ECOMM;
  frame_desc->actual_length = 0;
  break;
 case 131:
  urb->error_count++;
  frame_desc->status = -EOVERFLOW;

  break;
 case 128:
  urb->error_count++;
  frame_desc->status = -EPROTO;
  frame_desc->actual_length = dwc2_get_actual_xfer_length(hsotg,
     chan, chnum, qtd, halt_status, ((void*)0));


  if (chan->qh->do_split &&
      chan->ep_type == USB_ENDPOINT_XFER_ISOC && chan->ep_is_in &&
      hsotg->params.host_dma) {
   qtd->complete_split = 0;
   qtd->isoc_split_offset = 0;
  }

  break;
 default:
  dev_err(hsotg->dev, "Unhandled halt_status (%d)\n",
   halt_status);
  break;
 }

 if (++qtd->isoc_frame_index == urb->packet_count) {




  dwc2_host_complete(hsotg, qtd, 0);
  halt_status = DWC2_HC_XFER_URB_COMPLETE;
 } else {
  halt_status = 130;
 }

 return halt_status;
}
