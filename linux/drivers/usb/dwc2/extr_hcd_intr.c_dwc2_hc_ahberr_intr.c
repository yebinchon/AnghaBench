
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dwc2_qtd {struct dwc2_hcd_urb* urb; } ;
struct TYPE_2__ {scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {TYPE_1__ params; int dev; } ;
struct dwc2_host_chan {int speed; } ;
struct dwc2_hcd_urb {char* length; char* interval; scalar_t__ setup_dma; int setup_packet; scalar_t__ dma; int buf; int pipe_info; } ;


 int DWC2_HC_XFER_AHB_ERR ;
 int EIO ;
 int HCCHAR (int) ;
 int HCDMA (int) ;
 int HCINTMSK_AHBERR ;
 int HCSPLT (int) ;
 int HCTSIZ (int) ;







 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int disable_hc_int (struct dwc2_hsotg*,int,int ) ;
 int dwc2_hc_halt (struct dwc2_hsotg*,struct dwc2_host_chan*,int ) ;
 int dwc2_hc_handle_tt_clear (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*) ;
 int dwc2_hcd_complete_xfer_ddma (struct dwc2_hsotg*,struct dwc2_host_chan*,int,int ) ;
 char* dwc2_hcd_get_dev_addr (int *) ;
 int dwc2_hcd_get_ep_num (int *) ;
 int dwc2_hcd_get_maxp (int *) ;
 int dwc2_hcd_get_maxp_mult (int *) ;
 int dwc2_hcd_get_pipe_type (int *) ;
 scalar_t__ dwc2_hcd_is_pipe_in (int *) ;
 int dwc2_host_complete (struct dwc2_hsotg*,struct dwc2_qtd*,int ) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static void dwc2_hc_ahberr_intr(struct dwc2_hsotg *hsotg,
    struct dwc2_host_chan *chan, int chnum,
    struct dwc2_qtd *qtd)
{
 struct dwc2_hcd_urb *urb = qtd->urb;
 char *pipetype, *speed;
 u32 hcchar;
 u32 hcsplt;
 u32 hctsiz;
 u32 hc_dma;

 dev_dbg(hsotg->dev, "--Host Channel %d Interrupt: AHB Error--\n",
  chnum);

 if (!urb)
  goto handle_ahberr_halt;

 dwc2_hc_handle_tt_clear(hsotg, chan, qtd);

 hcchar = dwc2_readl(hsotg, HCCHAR(chnum));
 hcsplt = dwc2_readl(hsotg, HCSPLT(chnum));
 hctsiz = dwc2_readl(hsotg, HCTSIZ(chnum));
 hc_dma = dwc2_readl(hsotg, HCDMA(chnum));

 dev_err(hsotg->dev, "AHB ERROR, Channel %d\n", chnum);
 dev_err(hsotg->dev, "  hcchar 0x%08x, hcsplt 0x%08x\n", hcchar, hcsplt);
 dev_err(hsotg->dev, "  hctsiz 0x%08x, hc_dma 0x%08x\n", hctsiz, hc_dma);
 dev_err(hsotg->dev, "  Device address: %d\n",
  dwc2_hcd_get_dev_addr(&urb->pipe_info));
 dev_err(hsotg->dev, "  Endpoint: %d, %s\n",
  dwc2_hcd_get_ep_num(&urb->pipe_info),
  dwc2_hcd_is_pipe_in(&urb->pipe_info) ? "IN" : "OUT");

 switch (dwc2_hcd_get_pipe_type(&urb->pipe_info)) {
 case 133:
  pipetype = "CONTROL";
  break;
 case 134:
  pipetype = "BULK";
  break;
 case 132:
  pipetype = "INTERRUPT";
  break;
 case 131:
  pipetype = "ISOCHRONOUS";
  break;
 default:
  pipetype = "UNKNOWN";
  break;
 }

 dev_err(hsotg->dev, "  Endpoint type: %s\n", pipetype);

 switch (chan->speed) {
 case 129:
  speed = "HIGH";
  break;
 case 130:
  speed = "FULL";
  break;
 case 128:
  speed = "LOW";
  break;
 default:
  speed = "UNKNOWN";
  break;
 }

 dev_err(hsotg->dev, "  Speed: %s\n", speed);

 dev_err(hsotg->dev, "  Max packet size: %d (mult %d)\n",
  dwc2_hcd_get_maxp(&urb->pipe_info),
  dwc2_hcd_get_maxp_mult(&urb->pipe_info));
 dev_err(hsotg->dev, "  Data buffer length: %d\n", urb->length);
 dev_err(hsotg->dev, "  Transfer buffer: %p, Transfer DMA: %08lx\n",
  urb->buf, (unsigned long)urb->dma);
 dev_err(hsotg->dev, "  Setup buffer: %p, Setup DMA: %08lx\n",
  urb->setup_packet, (unsigned long)urb->setup_dma);
 dev_err(hsotg->dev, "  Interval: %d\n", urb->interval);


 if (hsotg->params.dma_desc_enable) {
  dwc2_hcd_complete_xfer_ddma(hsotg, chan, chnum,
         DWC2_HC_XFER_AHB_ERR);
  goto handle_ahberr_done;
 }

 dwc2_host_complete(hsotg, qtd, -EIO);

handle_ahberr_halt:




 dwc2_hc_halt(hsotg, chan, DWC2_HC_XFER_AHB_ERR);

handle_ahberr_done:
 disable_hc_int(hsotg, chnum, HCINTMSK_AHBERR);
}
