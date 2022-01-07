
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_qh {scalar_t__ desc_list; scalar_t__ ntd; struct dwc2_host_chan* channel; } ;
struct TYPE_2__ {scalar_t__ uframe_sched; } ;
struct dwc2_hsotg {int free_hc_list; int available_host_channels; int non_periodic_channels; TYPE_1__ params; } ;
struct dwc2_host_chan {int * qh; int hc_list_entry; } ;
struct dwc2_dma_desc {int dummy; } ;


 int dwc2_hc_cleanup (struct dwc2_hsotg*,struct dwc2_host_chan*) ;
 int dwc2_max_desc_num (struct dwc2_qh*) ;
 scalar_t__ dwc2_qh_is_non_per (struct dwc2_qh*) ;
 int dwc2_update_frame_list (struct dwc2_hsotg*,struct dwc2_qh*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static void dwc2_release_channel_ddma(struct dwc2_hsotg *hsotg,
          struct dwc2_qh *qh)
{
 struct dwc2_host_chan *chan = qh->channel;

 if (dwc2_qh_is_non_per(qh)) {
  if (hsotg->params.uframe_sched)
   hsotg->available_host_channels++;
  else
   hsotg->non_periodic_channels--;
 } else {
  dwc2_update_frame_list(hsotg, qh, 0);
  hsotg->available_host_channels++;
 }





 if (chan->qh) {
  if (!list_empty(&chan->hc_list_entry))
   list_del(&chan->hc_list_entry);
  dwc2_hc_cleanup(hsotg, chan);
  list_add_tail(&chan->hc_list_entry, &hsotg->free_hc_list);
  chan->qh = ((void*)0);
 }

 qh->channel = ((void*)0);
 qh->ntd = 0;

 if (qh->desc_list)
  memset(qh->desc_list, 0, sizeof(struct dwc2_dma_desc) *
         dwc2_max_desc_num(qh));
}
