
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_qtd {TYPE_1__* urb; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_host_chan {int dummy; } ;
typedef enum dwc2_halt_status { ____Placeholder_dwc2_halt_status } dwc2_halt_status ;
struct TYPE_2__ {int pipe_info; } ;


 int DWC2_HC_XFER_FRAME_OVERRUN ;
 int HCINTMSK_FRMOVRUN ;




 scalar_t__ dbg_hc (struct dwc2_host_chan*) ;
 int dev_dbg (int ,char*,int) ;
 int disable_hc_int (struct dwc2_hsotg*,int,int ) ;
 int dwc2_halt_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int) ;
 int dwc2_hc_handle_tt_clear (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*) ;
 int dwc2_hcd_get_pipe_type (int *) ;
 int dwc2_update_isoc_urb_state (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int) ;

__attribute__((used)) static void dwc2_hc_frmovrun_intr(struct dwc2_hsotg *hsotg,
      struct dwc2_host_chan *chan, int chnum,
      struct dwc2_qtd *qtd)
{
 enum dwc2_halt_status halt_status;

 if (dbg_hc(chan))
  dev_dbg(hsotg->dev, "--Host Channel %d Interrupt: Frame Overrun--\n",
   chnum);

 dwc2_hc_handle_tt_clear(hsotg, chan, qtd);

 switch (dwc2_hcd_get_pipe_type(&qtd->urb->pipe_info)) {
 case 130:
 case 131:
  break;
 case 129:
  dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_FRAME_OVERRUN);
  break;
 case 128:
  halt_status = dwc2_update_isoc_urb_state(hsotg, chan, chnum,
     qtd, DWC2_HC_XFER_FRAME_OVERRUN);
  dwc2_halt_channel(hsotg, chan, qtd, halt_status);
  break;
 }

 disable_hc_int(hsotg, chnum, HCINTMSK_FRMOVRUN);
}
