
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dwc2_qtd {void* data_toggle; } ;
struct dwc2_hsotg {int dummy; } ;
struct dwc2_host_chan {scalar_t__ ep_type; TYPE_1__* qh; } ;
struct TYPE_2__ {void* data_toggle; } ;


 void* DWC2_HC_PID_DATA0 ;
 void* DWC2_HC_PID_DATA1 ;
 int HCTSIZ (int) ;
 scalar_t__ TSIZ_SC_MC_PID_DATA0 ;
 scalar_t__ TSIZ_SC_MC_PID_MASK ;
 scalar_t__ TSIZ_SC_MC_PID_SHIFT ;
 scalar_t__ USB_ENDPOINT_XFER_CONTROL ;
 scalar_t__ WARN (int,char*) ;
 scalar_t__ dwc2_readl (struct dwc2_hsotg*,int ) ;

void dwc2_hcd_save_data_toggle(struct dwc2_hsotg *hsotg,
          struct dwc2_host_chan *chan, int chnum,
          struct dwc2_qtd *qtd)
{
 u32 hctsiz = dwc2_readl(hsotg, HCTSIZ(chnum));
 u32 pid = (hctsiz & TSIZ_SC_MC_PID_MASK) >> TSIZ_SC_MC_PID_SHIFT;

 if (chan->ep_type != USB_ENDPOINT_XFER_CONTROL) {
  if (WARN(!chan || !chan->qh,
    "chan->qh must be specified for non-control eps\n"))
   return;

  if (pid == TSIZ_SC_MC_PID_DATA0)
   chan->qh->data_toggle = DWC2_HC_PID_DATA0;
  else
   chan->qh->data_toggle = DWC2_HC_PID_DATA1;
 } else {
  if (WARN(!qtd,
    "qtd must be specified for control eps\n"))
   return;

  if (pid == TSIZ_SC_MC_PID_DATA0)
   qtd->data_toggle = DWC2_HC_PID_DATA0;
  else
   qtd->data_toggle = DWC2_HC_PID_DATA1;
 }
}
