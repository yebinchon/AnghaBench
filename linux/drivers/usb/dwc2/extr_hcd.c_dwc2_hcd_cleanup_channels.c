
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int host_channels; scalar_t__ uframe_sched; int host_dma; } ;
struct dwc2_hsotg {int available_host_channels; scalar_t__ periodic_channels; scalar_t__ non_periodic_channels; TYPE_1__ params; int free_hc_list; struct dwc2_host_chan** hc_ptr_array; } ;
struct dwc2_host_chan {int * qh; int hc_list_entry; } ;


 int HCCHAR (int) ;
 int HCCHAR_CHDIS ;
 int HCCHAR_CHENA ;
 int HCCHAR_EPDIR ;
 int dwc2_hc_cleanup (struct dwc2_hsotg*,struct dwc2_host_chan*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void dwc2_hcd_cleanup_channels(struct dwc2_hsotg *hsotg)
{
 int num_channels = hsotg->params.host_channels;
 struct dwc2_host_chan *channel;
 u32 hcchar;
 int i;

 if (!hsotg->params.host_dma) {

  for (i = 0; i < num_channels; i++) {
   channel = hsotg->hc_ptr_array[i];
   if (!list_empty(&channel->hc_list_entry))
    continue;
   hcchar = dwc2_readl(hsotg, HCCHAR(i));
   if (hcchar & HCCHAR_CHENA) {
    hcchar &= ~(HCCHAR_CHENA | HCCHAR_EPDIR);
    hcchar |= HCCHAR_CHDIS;
    dwc2_writel(hsotg, hcchar, HCCHAR(i));
   }
  }
 }

 for (i = 0; i < num_channels; i++) {
  channel = hsotg->hc_ptr_array[i];
  if (!list_empty(&channel->hc_list_entry))
   continue;
  hcchar = dwc2_readl(hsotg, HCCHAR(i));
  if (hcchar & HCCHAR_CHENA) {

   hcchar |= HCCHAR_CHDIS;
   dwc2_writel(hsotg, hcchar, HCCHAR(i));
  }

  dwc2_hc_cleanup(hsotg, channel);
  list_add_tail(&channel->hc_list_entry, &hsotg->free_hc_list);





  channel->qh = ((void*)0);
 }

 if (hsotg->params.uframe_sched) {
  hsotg->available_host_channels =
   hsotg->params.host_channels;
 } else {
  hsotg->non_periodic_channels = 0;
  hsotg->periodic_channels = 0;
 }
}
