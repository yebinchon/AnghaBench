
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_qtd {scalar_t__ error_count; } ;
struct dwc2_hsotg {int dummy; } ;
struct dwc2_host_chan {int ep_is_in; } ;
typedef enum dwc2_halt_status { ____Placeholder_dwc2_halt_status } dwc2_halt_status ;


 int HCTSIZ (int) ;
 int TSIZ_PKTCNT_MASK ;
 int dwc2_halt_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_release_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int) ;

__attribute__((used)) static void dwc2_complete_periodic_xfer(struct dwc2_hsotg *hsotg,
     struct dwc2_host_chan *chan, int chnum,
     struct dwc2_qtd *qtd,
     enum dwc2_halt_status halt_status)
{
 u32 hctsiz = dwc2_readl(hsotg, HCTSIZ(chnum));

 qtd->error_count = 0;

 if (!chan->ep_is_in || (hctsiz & TSIZ_PKTCNT_MASK) == 0)

  dwc2_release_channel(hsotg, chan, qtd, halt_status);
 else

  dwc2_halt_channel(hsotg, chan, qtd, halt_status);
}
