
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_qtd {size_t isoc_frame_index; int isoc_split_offset; int data_toggle; int control_phase; struct dwc2_hcd_urb* urb; } ;
struct TYPE_2__ {int host_dma; int dma_desc_enable; } ;
struct dwc2_hsotg {int status_buf_dma; int status_buf; TYPE_1__ params; int dev; } ;
struct dwc2_host_chan {int ep_type; int ep_is_in; int xfer_dma; int xfer_buf; int xfer_len; int xact_pos; int data_pid_start; int do_ping; } ;
struct dwc2_hcd_urb {int setup_dma; int setup_packet; int dma; int buf; struct dwc2_hcd_iso_packet_desc* iso_descs; int pipe_info; int length; } ;
struct dwc2_hcd_iso_packet_desc {int offset; int length; int status; } ;





 int DWC2_HCSPLT_XACTPOS_ALL ;
 int DWC2_HCSPLT_XACTPOS_BEGIN ;
 int DWC2_HC_PID_DATA1 ;
 int DWC2_HC_PID_SETUP ;




 int dev_vdbg (int ,char*) ;
 int dwc2_hcd_get_pipe_type (int *) ;
 int dwc2_hcd_is_pipe_out (int *) ;

__attribute__((used)) static void dwc2_hc_init_xfer(struct dwc2_hsotg *hsotg,
         struct dwc2_host_chan *chan,
         struct dwc2_qtd *qtd)
{
 struct dwc2_hcd_urb *urb = qtd->urb;
 struct dwc2_hcd_iso_packet_desc *frame_desc;

 switch (dwc2_hcd_get_pipe_type(&urb->pipe_info)) {
 case 130:
  chan->ep_type = 130;

  switch (qtd->control_phase) {
  case 133:
   dev_vdbg(hsotg->dev, "  Control setup transaction\n");
   chan->do_ping = 0;
   chan->ep_is_in = 0;
   chan->data_pid_start = DWC2_HC_PID_SETUP;
   if (hsotg->params.host_dma)
    chan->xfer_dma = urb->setup_dma;
   else
    chan->xfer_buf = urb->setup_packet;
   chan->xfer_len = 8;
   break;

  case 134:
   dev_vdbg(hsotg->dev, "  Control data transaction\n");
   chan->data_pid_start = qtd->data_toggle;
   break;

  case 132:




   dev_vdbg(hsotg->dev, "  Control status transaction\n");
   if (urb->length == 0)
    chan->ep_is_in = 1;
   else
    chan->ep_is_in =
     dwc2_hcd_is_pipe_out(&urb->pipe_info);
   if (chan->ep_is_in)
    chan->do_ping = 0;
   chan->data_pid_start = DWC2_HC_PID_DATA1;
   chan->xfer_len = 0;
   if (hsotg->params.host_dma)
    chan->xfer_dma = hsotg->status_buf_dma;
   else
    chan->xfer_buf = hsotg->status_buf;
   break;
  }
  break;

 case 131:
  chan->ep_type = 131;
  break;

 case 129:
  chan->ep_type = 129;
  break;

 case 128:
  chan->ep_type = 128;
  if (hsotg->params.dma_desc_enable)
   break;

  frame_desc = &urb->iso_descs[qtd->isoc_frame_index];
  frame_desc->status = 0;

  if (hsotg->params.host_dma) {
   chan->xfer_dma = urb->dma;
   chan->xfer_dma += frame_desc->offset +
     qtd->isoc_split_offset;
  } else {
   chan->xfer_buf = urb->buf;
   chan->xfer_buf += frame_desc->offset +
     qtd->isoc_split_offset;
  }

  chan->xfer_len = frame_desc->length - qtd->isoc_split_offset;

  if (chan->xact_pos == DWC2_HCSPLT_XACTPOS_ALL) {
   if (chan->xfer_len <= 188)
    chan->xact_pos = DWC2_HCSPLT_XACTPOS_ALL;
   else
    chan->xact_pos = DWC2_HCSPLT_XACTPOS_BEGIN;
  }
  break;
 }
}
