
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int speed; int ahbcfg; scalar_t__ service_interval; int external_id_pin_ctl; scalar_t__ ipg_isoc_en; int phy_type; } ;
struct dwc2_hsotg {int num_of_eps; int dev; int lx_state; TYPE_2__ params; TYPE_3__** eps_out; scalar_t__ dedicated_fifos; TYPE_1__** eps_in; } ;
struct TYPE_8__ {int maxpacket; } ;
struct TYPE_7__ {TYPE_4__ ep; } ;
struct TYPE_5__ {TYPE_4__ ep; } ;


 int DAINTMSK ;
 int DCFG ;
 int DCFG_DESCDMA_EN ;
 int DCFG_DEVSPD_FS ;
 int DCFG_DEVSPD_FS48 ;
 int DCFG_DEVSPD_HS ;
 int DCFG_DEVSPD_LS ;
 int DCFG_EPMISCNT (int) ;
 int DCFG_IPG_ISOC_SUPPORDED ;
 int DCTL ;
 int DCTL_CGNPINNAK ;
 int DCTL_CGOUTNAK ;
 int DCTL_PWRONPRGDONE ;
 int DCTL_SERVICE_INTERVAL_SUPPORTED ;
 int DCTL_SFTDISCON ;
 int DIEPCTL0 ;
 int DIEPMSK ;
 int DIEPMSK_AHBERRMSK ;
 int DIEPMSK_BNAININTRMSK ;
 int DIEPMSK_EPDISBLDMSK ;
 int DIEPMSK_INTKNTXFEMPMSK ;
 int DIEPMSK_TIMEOUTMSK ;
 int DIEPMSK_TXFIFOEMPTY ;
 int DIEPMSK_XFERCOMPLMSK ;
 int DOEPCTL0 ;
 int DOEPMSK ;
 int DOEPMSK_AHBERRMSK ;
 int DOEPMSK_BNAMSK ;
 int DOEPMSK_EPDISBLDMSK ;
 int DOEPMSK_SETUPMSK ;
 int DOEPMSK_STSPHSERCVDMSK ;
 int DOEPTSIZ0 ;
 int DWC2_L0 ;
 int DWC2_PHY_TYPE_PARAM_FS ;


 int DXEPCTL_CNAK ;
 int DXEPCTL_EPENA ;
 int DXEPCTL_USBACTEP ;
 int DXEPTSIZ_MC (int) ;
 int DXEPTSIZ_PKTCNT (int) ;
 int DXEPTSIZ_XFERSIZE (int) ;
 int ECONNRESET ;
 int GAHBCFG ;
 int GAHBCFG_DMA_EN ;
 int GAHBCFG_GLBL_INTR_EN ;
 int GAHBCFG_NP_TXF_EMP_LVL ;
 int GAHBCFG_P_TXF_EMP_LVL ;
 int GINTMSK ;
 int GINTSTS ;
 int GINTSTS_CONIDSTSCHNG ;
 int GINTSTS_ENUMDONE ;
 int GINTSTS_ERLYSUSP ;
 int GINTSTS_GINNAKEFF ;
 int GINTSTS_GOUTNAKEFF ;
 int GINTSTS_IEPINT ;
 int GINTSTS_INCOMPL_SOIN ;
 int GINTSTS_INCOMPL_SOOUT ;
 int GINTSTS_LPMTRANRCVD ;
 int GINTSTS_OEPINT ;
 int GINTSTS_OTGINT ;
 int GINTSTS_RESETDET ;
 int GINTSTS_RXFLVL ;
 int GINTSTS_SESSREQINT ;
 int GINTSTS_USBRST ;
 int GINTSTS_USBSUSP ;
 int GINTSTS_WKUPINT ;
 int GOTGINT ;
 int GUSBCFG ;
 int GUSBCFG_HNPCAP ;
 int GUSBCFG_SRPCAP ;
 int GUSBCFG_TOUTCAL (int) ;
 int GUSBCFG_TOUTCAL_MASK ;
 int dev_dbg (int ,char*,int,...) ;
 int dwc2_clear_bit (struct dwc2_hsotg*,int ,int) ;
 scalar_t__ dwc2_core_reset (struct dwc2_hsotg*,int) ;
 int dwc2_gadget_init_lpm (struct dwc2_hsotg*) ;
 int dwc2_gadget_program_ref_clk (struct dwc2_hsotg*) ;
 int dwc2_hsotg_ctrl_epint (struct dwc2_hsotg*,int ,int,int) ;
 int dwc2_hsotg_en_gsint (struct dwc2_hsotg*,int) ;
 int dwc2_hsotg_enqueue_setup (struct dwc2_hsotg*) ;
 int dwc2_hsotg_ep0_mps (int ) ;
 int dwc2_hsotg_ep_disable (TYPE_4__*) ;
 int dwc2_hsotg_init_fifo (struct dwc2_hsotg*) ;
 int dwc2_phy_init (struct dwc2_hsotg*,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_set_bit (struct dwc2_hsotg*,int ,int) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int kill_all_requests (struct dwc2_hsotg*,TYPE_3__*,int ) ;
 int mdelay (int) ;
 int udelay (int) ;
 scalar_t__ using_desc_dma (struct dwc2_hsotg*) ;
 scalar_t__ using_dma (struct dwc2_hsotg*) ;

void dwc2_hsotg_core_init_disconnected(struct dwc2_hsotg *hsotg,
           bool is_usb_reset)
{
 u32 intmsk;
 u32 val;
 u32 usbcfg;
 u32 dcfg = 0;
 int ep;


 kill_all_requests(hsotg, hsotg->eps_out[0], -ECONNRESET);

 if (!is_usb_reset) {
  if (dwc2_core_reset(hsotg, 1))
   return;
 } else {

  for (ep = 1; ep < hsotg->num_of_eps; ep++) {
   if (hsotg->eps_in[ep])
    dwc2_hsotg_ep_disable(&hsotg->eps_in[ep]->ep);
   if (hsotg->eps_out[ep])
    dwc2_hsotg_ep_disable(&hsotg->eps_out[ep]->ep);
  }
 }







 usbcfg = dwc2_readl(hsotg, GUSBCFG);
 usbcfg &= ~GUSBCFG_TOUTCAL_MASK;
 usbcfg |= GUSBCFG_TOUTCAL(7);


 usbcfg &= ~(GUSBCFG_SRPCAP | GUSBCFG_HNPCAP);
        dwc2_writel(hsotg, usbcfg, GUSBCFG);

 dwc2_phy_init(hsotg, 1);

 dwc2_hsotg_init_fifo(hsotg);

 if (!is_usb_reset)
  dwc2_set_bit(hsotg, DCTL, DCTL_SFTDISCON);

 dcfg |= DCFG_EPMISCNT(1);

 switch (hsotg->params.speed) {
 case 128:
  dcfg |= DCFG_DEVSPD_LS;
  break;
 case 129:
  if (hsotg->params.phy_type == DWC2_PHY_TYPE_PARAM_FS)
   dcfg |= DCFG_DEVSPD_FS48;
  else
   dcfg |= DCFG_DEVSPD_FS;
  break;
 default:
  dcfg |= DCFG_DEVSPD_HS;
 }

 if (hsotg->params.ipg_isoc_en)
  dcfg |= DCFG_IPG_ISOC_SUPPORDED;

 dwc2_writel(hsotg, dcfg, DCFG);


 dwc2_writel(hsotg, 0xffffffff, GOTGINT);


 dwc2_writel(hsotg, 0xffffffff, GINTSTS);
 intmsk = GINTSTS_ERLYSUSP | GINTSTS_SESSREQINT |
  GINTSTS_GOUTNAKEFF | GINTSTS_GINNAKEFF |
  GINTSTS_USBRST | GINTSTS_RESETDET |
  GINTSTS_ENUMDONE | GINTSTS_OTGINT |
  GINTSTS_USBSUSP | GINTSTS_WKUPINT |
  GINTSTS_LPMTRANRCVD;

 if (!using_desc_dma(hsotg))
  intmsk |= GINTSTS_INCOMPL_SOIN | GINTSTS_INCOMPL_SOOUT;

 if (!hsotg->params.external_id_pin_ctl)
  intmsk |= GINTSTS_CONIDSTSCHNG;

 dwc2_writel(hsotg, intmsk, GINTMSK);

 if (using_dma(hsotg)) {
  dwc2_writel(hsotg, GAHBCFG_GLBL_INTR_EN | GAHBCFG_DMA_EN |
       hsotg->params.ahbcfg,
       GAHBCFG);


  if (using_desc_dma(hsotg))
   dwc2_set_bit(hsotg, DCFG, DCFG_DESCDMA_EN);

 } else {
  dwc2_writel(hsotg, ((hsotg->dedicated_fifos) ?
      (GAHBCFG_NP_TXF_EMP_LVL |
       GAHBCFG_P_TXF_EMP_LVL) : 0) |
       GAHBCFG_GLBL_INTR_EN, GAHBCFG);
 }







 dwc2_writel(hsotg, ((hsotg->dedicated_fifos && !using_dma(hsotg)) ?
  DIEPMSK_TXFIFOEMPTY | DIEPMSK_INTKNTXFEMPMSK : 0) |
  DIEPMSK_EPDISBLDMSK | DIEPMSK_XFERCOMPLMSK |
  DIEPMSK_TIMEOUTMSK | DIEPMSK_AHBERRMSK,
  DIEPMSK);





 dwc2_writel(hsotg, (using_dma(hsotg) ? (DIEPMSK_XFERCOMPLMSK |
  DOEPMSK_STSPHSERCVDMSK) : 0) |
  DOEPMSK_EPDISBLDMSK | DOEPMSK_AHBERRMSK |
  DOEPMSK_SETUPMSK,
  DOEPMSK);


 if (using_desc_dma(hsotg)) {
  dwc2_set_bit(hsotg, DOEPMSK, DOEPMSK_BNAMSK);
  dwc2_set_bit(hsotg, DIEPMSK, DIEPMSK_BNAININTRMSK);
 }


 if (using_desc_dma(hsotg) && hsotg->params.service_interval)
  dwc2_set_bit(hsotg, DCTL, DCTL_SERVICE_INTERVAL_SUPPORTED);

 dwc2_writel(hsotg, 0, DAINTMSK);

 dev_dbg(hsotg->dev, "EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\n",
  dwc2_readl(hsotg, DIEPCTL0),
  dwc2_readl(hsotg, DOEPCTL0));


 dwc2_hsotg_en_gsint(hsotg, GINTSTS_OEPINT | GINTSTS_IEPINT);






 if (!using_dma(hsotg))
  dwc2_hsotg_en_gsint(hsotg, GINTSTS_RXFLVL);


 dwc2_hsotg_ctrl_epint(hsotg, 0, 0, 1);
 dwc2_hsotg_ctrl_epint(hsotg, 0, 1, 1);

 if (!is_usb_reset) {
  dwc2_set_bit(hsotg, DCTL, DCTL_PWRONPRGDONE);
  udelay(10);
  dwc2_clear_bit(hsotg, DCTL, DCTL_PWRONPRGDONE);
 }

 dev_dbg(hsotg->dev, "DCTL=0x%08x\n", dwc2_readl(hsotg, DCTL));







 dwc2_writel(hsotg, DXEPTSIZ_MC(1) | DXEPTSIZ_PKTCNT(1) |
        DXEPTSIZ_XFERSIZE(8), DOEPTSIZ0);

 dwc2_writel(hsotg, dwc2_hsotg_ep0_mps(hsotg->eps_out[0]->ep.maxpacket) |
        DXEPCTL_CNAK | DXEPCTL_EPENA |
        DXEPCTL_USBACTEP,
        DOEPCTL0);


 dwc2_writel(hsotg, dwc2_hsotg_ep0_mps(hsotg->eps_out[0]->ep.maxpacket) |
        DXEPCTL_USBACTEP, DIEPCTL0);


 val = DCTL_CGOUTNAK | DCTL_CGNPINNAK;
 if (!is_usb_reset)
  val |= DCTL_SFTDISCON;
 dwc2_set_bit(hsotg, DCTL, val);


 dwc2_gadget_init_lpm(hsotg);


 if (using_desc_dma(hsotg) && hsotg->params.service_interval)
  dwc2_gadget_program_ref_clk(hsotg);


 mdelay(3);

 hsotg->lx_state = DWC2_L0;

 dwc2_hsotg_enqueue_setup(hsotg);

 dev_dbg(hsotg->dev, "EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\n",
  dwc2_readl(hsotg, DIEPCTL0),
  dwc2_readl(hsotg, DOEPCTL0));
}
