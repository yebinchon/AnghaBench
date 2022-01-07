
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dma_desc_enable; } ;
struct dwc2_hsotg {int dev; TYPE_1__ params; } ;
struct dwc2_host_chan {scalar_t__ ep_type; int hc_num; scalar_t__ ep_is_in; int do_split; scalar_t__ error_state; } ;


 int HCINTMSK (int ) ;
 int HCINTMSK_ACK ;
 int HCINTMSK_AHBERR ;
 int HCINTMSK_CHHLTD ;
 int HCINTMSK_DATATGLERR ;
 int HCINTMSK_NAK ;
 int HCINTMSK_XFERCOMPL ;
 scalar_t__ USB_ENDPOINT_XFER_INT ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 scalar_t__ dbg_hc (struct dwc2_host_chan*) ;
 int dev_vdbg (int ,char*,...) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

__attribute__((used)) static void dwc2_hc_enable_dma_ints(struct dwc2_hsotg *hsotg,
        struct dwc2_host_chan *chan)
{
 u32 hcintmsk = HCINTMSK_CHHLTD;





 if (!hsotg->params.dma_desc_enable) {
  if (dbg_hc(chan))
   dev_vdbg(hsotg->dev, "desc DMA disabled\n");
  hcintmsk |= HCINTMSK_AHBERR;
 } else {
  if (dbg_hc(chan))
   dev_vdbg(hsotg->dev, "desc DMA enabled\n");
  if (chan->ep_type == USB_ENDPOINT_XFER_ISOC)
   hcintmsk |= HCINTMSK_XFERCOMPL;
 }

 if (chan->error_state && !chan->do_split &&
     chan->ep_type != USB_ENDPOINT_XFER_ISOC) {
  if (dbg_hc(chan))
   dev_vdbg(hsotg->dev, "setting ACK\n");
  hcintmsk |= HCINTMSK_ACK;
  if (chan->ep_is_in) {
   hcintmsk |= HCINTMSK_DATATGLERR;
   if (chan->ep_type != USB_ENDPOINT_XFER_INT)
    hcintmsk |= HCINTMSK_NAK;
  }
 }

 dwc2_writel(hsotg, hcintmsk, HCINTMSK(chan->hc_num));
 if (dbg_hc(chan))
  dev_vdbg(hsotg->dev, "set HCINTMSK to %08x\n", hcintmsk);
}
