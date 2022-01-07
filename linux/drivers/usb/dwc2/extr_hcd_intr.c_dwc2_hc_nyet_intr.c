
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_qtd {scalar_t__ isoc_frame_index; TYPE_2__* urb; scalar_t__ error_count; scalar_t__ complete_split; scalar_t__ isoc_split_offset; } ;
struct dwc2_qh {int next_active_frame; int start_active_frame; int num_hs_transfers; scalar_t__ ep_type; int ping_state; scalar_t__ ep_is_in; } ;
struct TYPE_3__ {int uframe_sched; scalar_t__ host_dma; } ;
struct dwc2_hsotg {TYPE_1__ params; int dev; } ;
struct dwc2_host_chan {scalar_t__ ep_type; struct dwc2_qh* qh; scalar_t__ ep_is_in; scalar_t__ complete_split; scalar_t__ do_split; } ;
struct TYPE_4__ {scalar_t__ packet_count; } ;


 int DWC2_HC_XFER_NO_HALT_STATUS ;
 int DWC2_HC_XFER_NYET ;
 int DWC2_HC_XFER_URB_COMPLETE ;
 int DWC2_HC_XFER_XACT_ERR ;
 int HCINTMSK_NYET ;
 scalar_t__ USB_ENDPOINT_XFER_INT ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 scalar_t__ dbg_hc (struct dwc2_host_chan*) ;
 int dev_vdbg (int ,char*,int) ;
 int disable_hc_int (struct dwc2_hsotg*,int,int ) ;
 int dwc2_frame_num_inc (int,int) ;
 int dwc2_frame_num_le (int,int) ;
 scalar_t__ dwc2_full_frame_num (int) ;
 int dwc2_halt_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int ) ;
 int dwc2_hcd_get_frame_number (struct dwc2_hsotg*) ;
 int dwc2_hcd_save_data_toggle (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*) ;
 int dwc2_host_complete (struct dwc2_hsotg*,struct dwc2_qtd*,int ) ;
 int dwc2_release_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int ) ;
 int dwc2_update_urb_state_abn (struct dwc2_hsotg*,struct dwc2_host_chan*,int,TYPE_2__*,struct dwc2_qtd*,int ) ;

__attribute__((used)) static void dwc2_hc_nyet_intr(struct dwc2_hsotg *hsotg,
         struct dwc2_host_chan *chan, int chnum,
         struct dwc2_qtd *qtd)
{
 if (dbg_hc(chan))
  dev_vdbg(hsotg->dev, "--Host Channel %d Interrupt: NYET Received--\n",
    chnum);





 if (chan->do_split && chan->complete_split) {
  if (chan->ep_is_in && chan->ep_type == USB_ENDPOINT_XFER_ISOC &&
      hsotg->params.host_dma) {
   qtd->complete_split = 0;
   qtd->isoc_split_offset = 0;
   qtd->isoc_frame_index++;
   if (qtd->urb &&
       qtd->isoc_frame_index == qtd->urb->packet_count) {
    dwc2_host_complete(hsotg, qtd, 0);
    dwc2_release_channel(hsotg, chan, qtd,
           DWC2_HC_XFER_URB_COMPLETE);
   } else {
    dwc2_release_channel(hsotg, chan, qtd,
      DWC2_HC_XFER_NO_HALT_STATUS);
   }
   goto handle_nyet_done;
  }

  if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
      chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
   struct dwc2_qh *qh = chan->qh;
   bool past_end;

   if (!hsotg->params.uframe_sched) {
    int frnum = dwc2_hcd_get_frame_number(hsotg);


    past_end = dwc2_full_frame_num(frnum) !=
         dwc2_full_frame_num(qh->next_active_frame);
   } else {
    int end_frnum;
    end_frnum = dwc2_frame_num_inc(
     qh->start_active_frame,
     qh->num_hs_transfers);

    if (qh->ep_type != USB_ENDPOINT_XFER_ISOC ||
        qh->ep_is_in)
     end_frnum =
            dwc2_frame_num_inc(end_frnum, 1);

    past_end = dwc2_frame_num_le(
     end_frnum, qh->next_active_frame);
   }

   if (past_end) {
    qtd->complete_split = 0;
    dwc2_halt_channel(hsotg, chan, qtd,
        DWC2_HC_XFER_XACT_ERR);

    goto handle_nyet_done;
   }
  }

  dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_NYET);
  goto handle_nyet_done;
 }

 chan->qh->ping_state = 1;
 qtd->error_count = 0;

 dwc2_update_urb_state_abn(hsotg, chan, chnum, qtd->urb, qtd,
      DWC2_HC_XFER_NYET);
 dwc2_hcd_save_data_toggle(hsotg, chan, chnum, qtd);





 dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_NYET);

handle_nyet_done:
 disable_hc_int(hsotg, chnum, HCINTMSK_NYET);
}
