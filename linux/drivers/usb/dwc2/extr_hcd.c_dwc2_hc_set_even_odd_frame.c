
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int host_perio_tx_fifo_size; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;
struct dwc2_host_chan {scalar_t__ ep_type; int speed; TYPE_2__* qh; scalar_t__ xfer_len; int do_split; } ;
struct TYPE_4__ {int next_active_frame; } ;


 int HCCHAR_ODDFRM ;
 int HPTXSTS ;
 int NS_TO_US (int) ;
 int TXSTS_FSPCAVAIL_MASK ;
 int TXSTS_FSPCAVAIL_SHIFT ;
 scalar_t__ USB_ENDPOINT_XFER_INT ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int USB_SPEED_HIGH ;
 int dwc2_frame_num_dec (int,int) ;
 scalar_t__ dwc2_frame_num_gt (int,int) ;
 int dwc2_frame_num_inc (int ,int) ;
 int dwc2_hcd_get_future_frame_number (struct dwc2_hsotg*,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_sch_vdbg (struct dwc2_hsotg*,char*,TYPE_2__*,int,int,int ) ;
 int usb_calc_bus_time (int,int,int,scalar_t__) ;

__attribute__((used)) static void dwc2_hc_set_even_odd_frame(struct dwc2_hsotg *hsotg,
           struct dwc2_host_chan *chan, u32 *hcchar)
{
 if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
     chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
  int host_speed;
  int xfer_ns;
  int xfer_us;
  int bytes_in_fifo;
  u16 fifo_space;
  u16 frame_number;
  u16 wire_frame;
  host_speed = (chan->speed != USB_SPEED_HIGH &&
         !chan->do_split) ? chan->speed : USB_SPEED_HIGH;


  fifo_space = (dwc2_readl(hsotg, HPTXSTS) &
         TXSTS_FSPCAVAIL_MASK) >> TXSTS_FSPCAVAIL_SHIFT;
  bytes_in_fifo = sizeof(u32) *
    (hsotg->params.host_perio_tx_fifo_size -
     fifo_space);
  xfer_ns = usb_calc_bus_time(host_speed, 0, 0,
         chan->xfer_len + bytes_in_fifo);
  xfer_us = NS_TO_US(xfer_ns);


  frame_number = dwc2_hcd_get_future_frame_number(hsotg, xfer_us);


  wire_frame = dwc2_frame_num_inc(chan->qh->next_active_frame, 1);
  if (dwc2_frame_num_gt(frame_number, wire_frame)) {
   dwc2_sch_vdbg(hsotg,
          "QH=%p EO MISS fr=%04x=>%04x (%+d)\n",
          chan->qh, wire_frame, frame_number,
          dwc2_frame_num_dec(frame_number,
        wire_frame));
   wire_frame = frame_number;
   chan->qh->next_active_frame =
    dwc2_frame_num_dec(frame_number, 1);
  }

  if (wire_frame & 1)
   *hcchar |= HCCHAR_ODDFRM;
  else
   *hcchar &= ~HCCHAR_ODDFRM;
 }
}
