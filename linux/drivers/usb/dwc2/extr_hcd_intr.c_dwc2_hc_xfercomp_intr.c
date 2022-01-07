
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_qtd {int control_phase; int isoc_split_pos; scalar_t__ complete_split; struct dwc2_hcd_urb* urb; } ;
struct TYPE_4__ {scalar_t__ host_dma; scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {int dev; TYPE_2__ params; } ;
struct dwc2_host_chan {int ep_type; scalar_t__ ep_is_in; TYPE_1__* qh; } ;
struct dwc2_hcd_urb {int status; int length; int pipe_info; } ;
typedef enum dwc2_halt_status { ____Placeholder_dwc2_halt_status } dwc2_halt_status ;
struct TYPE_3__ {scalar_t__ do_split; } ;





 int DWC2_HCSPLT_XACTPOS_ALL ;
 int DWC2_HC_XFER_COMPLETE ;
 int DWC2_HC_XFER_URB_COMPLETE ;
 int EINPROGRESS ;
 int HCINTMSK_XFERCOMPL ;




 scalar_t__ dbg_hc (struct dwc2_host_chan*) ;
 int dbg_perio () ;
 int dev_vdbg (int ,char*,...) ;
 int disable_hc_int (struct dwc2_hsotg*,int,int ) ;
 int dwc2_complete_non_periodic_xfer (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int) ;
 int dwc2_complete_periodic_xfer (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int) ;
 int dwc2_hcd_complete_xfer_ddma (struct dwc2_hsotg*,struct dwc2_host_chan*,int,int) ;
 int dwc2_hcd_get_pipe_type (int *) ;
 int dwc2_hcd_save_data_toggle (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*) ;
 int dwc2_host_complete (struct dwc2_hsotg*,struct dwc2_qtd*,int ) ;
 int dwc2_update_isoc_urb_state (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int) ;
 int dwc2_update_urb_state (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_hcd_urb*,struct dwc2_qtd*) ;
 scalar_t__ dwc2_xfercomp_isoc_split_in (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*) ;

__attribute__((used)) static void dwc2_hc_xfercomp_intr(struct dwc2_hsotg *hsotg,
      struct dwc2_host_chan *chan, int chnum,
      struct dwc2_qtd *qtd)
{
 struct dwc2_hcd_urb *urb = qtd->urb;
 enum dwc2_halt_status halt_status = DWC2_HC_XFER_COMPLETE;
 int pipe_type;
 int urb_xfer_done;

 if (dbg_hc(chan))
  dev_vdbg(hsotg->dev,
    "--Host Channel %d Interrupt: Transfer Complete--\n",
    chnum);

 if (!urb)
  goto handle_xfercomp_done;

 pipe_type = dwc2_hcd_get_pipe_type(&urb->pipe_info);

 if (hsotg->params.dma_desc_enable) {
  dwc2_hcd_complete_xfer_ddma(hsotg, chan, chnum, halt_status);
  if (pipe_type == 128)

   return;
  goto handle_xfercomp_done;
 }


 if (chan->qh->do_split) {
  if (chan->ep_type == 128 && chan->ep_is_in &&
      hsotg->params.host_dma) {
   if (qtd->complete_split &&
       dwc2_xfercomp_isoc_split_in(hsotg, chan, chnum,
       qtd))
    goto handle_xfercomp_done;
  } else {
   qtd->complete_split = 0;
  }
 }


 switch (pipe_type) {
 case 130:
  switch (qtd->control_phase) {
  case 133:
   if (urb->length > 0)
    qtd->control_phase = 134;
   else
    qtd->control_phase = 132;
   dev_vdbg(hsotg->dev,
     "  Control setup transaction done\n");
   halt_status = DWC2_HC_XFER_COMPLETE;
   break;
  case 134:
   urb_xfer_done = dwc2_update_urb_state(hsotg, chan,
             chnum, urb, qtd);
   if (urb_xfer_done) {
    qtd->control_phase = 132;
    dev_vdbg(hsotg->dev,
      "  Control data transfer done\n");
   } else {
    dwc2_hcd_save_data_toggle(hsotg, chan, chnum,
         qtd);
   }
   halt_status = DWC2_HC_XFER_COMPLETE;
   break;
  case 132:
   dev_vdbg(hsotg->dev, "  Control transfer complete\n");
   if (urb->status == -EINPROGRESS)
    urb->status = 0;
   dwc2_host_complete(hsotg, qtd, urb->status);
   halt_status = DWC2_HC_XFER_URB_COMPLETE;
   break;
  }

  dwc2_complete_non_periodic_xfer(hsotg, chan, chnum, qtd,
      halt_status);
  break;
 case 131:
  dev_vdbg(hsotg->dev, "  Bulk transfer complete\n");
  urb_xfer_done = dwc2_update_urb_state(hsotg, chan, chnum, urb,
            qtd);
  if (urb_xfer_done) {
   dwc2_host_complete(hsotg, qtd, urb->status);
   halt_status = DWC2_HC_XFER_URB_COMPLETE;
  } else {
   halt_status = DWC2_HC_XFER_COMPLETE;
  }

  dwc2_hcd_save_data_toggle(hsotg, chan, chnum, qtd);
  dwc2_complete_non_periodic_xfer(hsotg, chan, chnum, qtd,
      halt_status);
  break;
 case 129:
  dev_vdbg(hsotg->dev, "  Interrupt transfer complete\n");
  urb_xfer_done = dwc2_update_urb_state(hsotg, chan, chnum, urb,
            qtd);





  if (urb_xfer_done) {
   dwc2_host_complete(hsotg, qtd, urb->status);
   halt_status = DWC2_HC_XFER_URB_COMPLETE;
  } else {
   halt_status = DWC2_HC_XFER_COMPLETE;
  }

  dwc2_hcd_save_data_toggle(hsotg, chan, chnum, qtd);
  dwc2_complete_periodic_xfer(hsotg, chan, chnum, qtd,
         halt_status);
  break;
 case 128:
  if (dbg_perio())
   dev_vdbg(hsotg->dev, "  Isochronous transfer complete\n");
  if (qtd->isoc_split_pos == DWC2_HCSPLT_XACTPOS_ALL)
   halt_status = dwc2_update_isoc_urb_state(hsotg, chan,
       chnum, qtd,
       DWC2_HC_XFER_COMPLETE);
  dwc2_complete_periodic_xfer(hsotg, chan, chnum, qtd,
         halt_status);
  break;
 }

handle_xfercomp_done:
 disable_hc_int(hsotg, chnum, HCINTMSK_XFERCOMPL);
}
