
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_qtd {struct dwc2_hcd_urb* urb; } ;
struct TYPE_3__ {scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {TYPE_1__ params; int dev; } ;
struct dwc2_host_chan {TYPE_2__* qh; } ;
struct dwc2_hcd_urb {int pipe_info; } ;
struct TYPE_4__ {scalar_t__ data_toggle; } ;


 int DWC2_HC_XFER_STALL ;
 int EPIPE ;
 int HCINTMSK_STALL ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_CONTROL ;
 int USB_ENDPOINT_XFER_INT ;
 int dev_dbg (int ,char*,int) ;
 int disable_hc_int (struct dwc2_hsotg*,int,int ) ;
 int dwc2_halt_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int ) ;
 int dwc2_hcd_complete_xfer_ddma (struct dwc2_hsotg*,struct dwc2_host_chan*,int,int ) ;
 int dwc2_hcd_get_pipe_type (int *) ;
 int dwc2_host_complete (struct dwc2_hsotg*,struct dwc2_qtd*,int ) ;

__attribute__((used)) static void dwc2_hc_stall_intr(struct dwc2_hsotg *hsotg,
          struct dwc2_host_chan *chan, int chnum,
          struct dwc2_qtd *qtd)
{
 struct dwc2_hcd_urb *urb = qtd->urb;
 int pipe_type;

 dev_dbg(hsotg->dev, "--Host Channel %d Interrupt: STALL Received--\n",
  chnum);

 if (hsotg->params.dma_desc_enable) {
  dwc2_hcd_complete_xfer_ddma(hsotg, chan, chnum,
         DWC2_HC_XFER_STALL);
  goto handle_stall_done;
 }

 if (!urb)
  goto handle_stall_halt;

 pipe_type = dwc2_hcd_get_pipe_type(&urb->pipe_info);

 if (pipe_type == USB_ENDPOINT_XFER_CONTROL)
  dwc2_host_complete(hsotg, qtd, -EPIPE);

 if (pipe_type == USB_ENDPOINT_XFER_BULK ||
     pipe_type == USB_ENDPOINT_XFER_INT) {
  dwc2_host_complete(hsotg, qtd, -EPIPE);







  chan->qh->data_toggle = 0;
 }

handle_stall_halt:
 dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_STALL);

handle_stall_done:
 disable_hc_int(hsotg, chnum, HCINTMSK_STALL);
}
