
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ dma_desc_enable; scalar_t__ host_dma; } ;
struct dwc2_hsotg {TYPE_1__ params; int split_order; } ;
struct dwc2_host_chan {scalar_t__ ep_type; scalar_t__ data_pid_start; int max_packet; int xfer_started; int ep_is_in; scalar_t__ do_ping; int halt_status; scalar_t__ halt_on_queue; scalar_t__ halt_pending; TYPE_2__* qh; int split_order_list_entry; scalar_t__ do_split; } ;
struct TYPE_4__ {scalar_t__ ping_state; } ;


 scalar_t__ DWC2_HC_PID_SETUP ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int dwc2_hc_continue_transfer (struct dwc2_hsotg*,struct dwc2_host_chan*) ;
 int dwc2_hc_halt (struct dwc2_hsotg*,struct dwc2_host_chan*,int ) ;
 int dwc2_hc_start_transfer (struct dwc2_hsotg*,struct dwc2_host_chan*) ;
 int dwc2_hcd_start_xfer_ddma (struct dwc2_hsotg*,TYPE_2__*) ;
 int list_move_tail (int *,int *) ;

__attribute__((used)) static int dwc2_queue_transaction(struct dwc2_hsotg *hsotg,
      struct dwc2_host_chan *chan,
      u16 fifo_dwords_avail)
{
 int retval = 0;

 if (chan->do_split)

  list_move_tail(&chan->split_order_list_entry,
          &hsotg->split_order);

 if (hsotg->params.host_dma) {
  if (hsotg->params.dma_desc_enable) {
   if (!chan->xfer_started ||
       chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
    dwc2_hcd_start_xfer_ddma(hsotg, chan->qh);
    chan->qh->ping_state = 0;
   }
  } else if (!chan->xfer_started) {
   dwc2_hc_start_transfer(hsotg, chan);
   chan->qh->ping_state = 0;
  }
 } else if (chan->halt_pending) {

 } else if (chan->halt_on_queue) {
  dwc2_hc_halt(hsotg, chan, chan->halt_status);
 } else if (chan->do_ping) {
  if (!chan->xfer_started)
   dwc2_hc_start_transfer(hsotg, chan);
 } else if (!chan->ep_is_in ||
     chan->data_pid_start == DWC2_HC_PID_SETUP) {
  if ((fifo_dwords_avail * 4) >= chan->max_packet) {
   if (!chan->xfer_started) {
    dwc2_hc_start_transfer(hsotg, chan);
    retval = 1;
   } else {
    retval = dwc2_hc_continue_transfer(hsotg, chan);
   }
  } else {
   retval = -1;
  }
 } else {
  if (!chan->xfer_started) {
   dwc2_hc_start_transfer(hsotg, chan);
   retval = 1;
  } else {
   retval = dwc2_hc_continue_transfer(hsotg, chan);
  }
 }

 return retval;
}
