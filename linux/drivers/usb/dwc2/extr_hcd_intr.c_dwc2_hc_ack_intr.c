
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_qtd {int complete_split; int isoc_split_pos; int isoc_split_offset; size_t isoc_frame_index; scalar_t__ error_count; TYPE_1__* urb; int ssplit_out_xfer_count; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_host_chan {scalar_t__ data_pid_start; scalar_t__ ep_type; int xact_pos; TYPE_2__* qh; scalar_t__ ep_is_in; int xfer_len; scalar_t__ do_split; } ;
struct dwc2_hcd_iso_packet_desc {int length; } ;
struct TYPE_4__ {scalar_t__ ping_state; } ;
struct TYPE_3__ {struct dwc2_hcd_iso_packet_desc* iso_descs; } ;






 scalar_t__ DWC2_HC_PID_SETUP ;
 int DWC2_HC_XFER_ACK ;
 int HCINTMSK_ACK ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 scalar_t__ dbg_hc (struct dwc2_host_chan*) ;
 int dev_vdbg (int ,char*,int) ;
 int disable_hc_int (struct dwc2_hsotg*,int,int ) ;
 int dwc2_halt_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int ) ;

__attribute__((used)) static void dwc2_hc_ack_intr(struct dwc2_hsotg *hsotg,
        struct dwc2_host_chan *chan, int chnum,
        struct dwc2_qtd *qtd)
{
 struct dwc2_hcd_iso_packet_desc *frame_desc;

 if (dbg_hc(chan))
  dev_vdbg(hsotg->dev, "--Host Channel %d Interrupt: ACK Received--\n",
    chnum);

 if (chan->do_split) {

  if (!chan->ep_is_in &&
      chan->data_pid_start != DWC2_HC_PID_SETUP)
   qtd->ssplit_out_xfer_count = chan->xfer_len;

  if (chan->ep_type != USB_ENDPOINT_XFER_ISOC || chan->ep_is_in) {
   qtd->complete_split = 1;
   dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_ACK);
  } else {

   switch (chan->xact_pos) {
   case 131:
    break;
   case 129:
    qtd->isoc_split_pos = 131;
    qtd->isoc_split_offset = 0;
    break;
   case 130:
   case 128:





    frame_desc = &qtd->urb->iso_descs[
      qtd->isoc_frame_index];
    qtd->isoc_split_offset += 188;

    if (frame_desc->length - qtd->isoc_split_offset
       <= 188)
     qtd->isoc_split_pos =
       129;
    else
     qtd->isoc_split_pos =
       128;
    break;
   }
  }
 } else {
  qtd->error_count = 0;

  if (chan->qh->ping_state) {
   chan->qh->ping_state = 0;







   dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_ACK);
  }
 }





 disable_hc_int(hsotg, chnum, HCINTMSK_ACK);
}
