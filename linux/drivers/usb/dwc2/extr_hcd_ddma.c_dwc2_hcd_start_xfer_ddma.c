
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dwc2_qh {int ntd; struct dwc2_host_chan* channel; } ;
struct dwc2_hsotg {int dummy; } ;
struct dwc2_host_chan {int ep_type; int ntd; int xfer_started; } ;






 int dwc2_hc_start_transfer_ddma (struct dwc2_hsotg*,struct dwc2_host_chan*) ;
 int dwc2_init_isoc_dma_desc (struct dwc2_hsotg*,struct dwc2_qh*,int ) ;
 int dwc2_init_non_isoc_dma_desc (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_max_desc_num (struct dwc2_qh*) ;
 int dwc2_recalc_initial_desc_idx (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_update_frame_list (struct dwc2_hsotg*,struct dwc2_qh*,int) ;

void dwc2_hcd_start_xfer_ddma(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{

 struct dwc2_host_chan *chan = qh->channel;
 u16 skip_frames = 0;

 switch (chan->ep_type) {
 case 130:
 case 131:
  dwc2_init_non_isoc_dma_desc(hsotg, qh);
  dwc2_hc_start_transfer_ddma(hsotg, chan);
  break;
 case 129:
  dwc2_init_non_isoc_dma_desc(hsotg, qh);
  dwc2_update_frame_list(hsotg, qh, 1);
  dwc2_hc_start_transfer_ddma(hsotg, chan);
  break;
 case 128:
  if (!qh->ntd)
   skip_frames = dwc2_recalc_initial_desc_idx(hsotg, qh);
  dwc2_init_isoc_dma_desc(hsotg, qh, skip_frames);

  if (!chan->xfer_started) {
   dwc2_update_frame_list(hsotg, qh, 1);






   chan->ntd = dwc2_max_desc_num(qh);


   dwc2_hc_start_transfer_ddma(hsotg, chan);
  }

  break;
 default:
  break;
 }
}
