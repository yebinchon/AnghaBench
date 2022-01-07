
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hwparams3; } ;
struct dwc3 {scalar_t__ revision; int hsphy_mode; int regs; scalar_t__ dis_u2_freeclk_exists_quirk; scalar_t__ dis_enblslpm_quirk; scalar_t__ dis_u2_susphy_quirk; int hsphy_interface; TYPE_1__ hwparams; scalar_t__ dis_del_phy_power_chg_quirk; scalar_t__ dis_u3_susphy_quirk; int tx_de_emphasis; scalar_t__ tx_de_emphasis_quirk; scalar_t__ rx_detect_poll_quirk; scalar_t__ lfps_filter_quirk; scalar_t__ del_phy_power_chg_quirk; scalar_t__ del_p1p2p3_quirk; scalar_t__ req_p1p2p3_quirk; scalar_t__ dis_rxdet_inp3_quirk; scalar_t__ u2ss_inp3_quirk; } ;


 int DWC3_GHWPARAMS3_HSPHY_IFC (int ) ;


 int DWC3_GUSB2PHYCFG (int ) ;
 int DWC3_GUSB2PHYCFG_ENBLSLPM ;
 int DWC3_GUSB2PHYCFG_PHYIF (int ) ;
 int DWC3_GUSB2PHYCFG_PHYIF_MASK ;
 int DWC3_GUSB2PHYCFG_SUSPHY ;
 int DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS ;
 int DWC3_GUSB2PHYCFG_ULPI_UTMI ;
 int DWC3_GUSB2PHYCFG_USBTRDTIM (int ) ;
 int DWC3_GUSB2PHYCFG_USBTRDTIM_MASK ;
 int DWC3_GUSB3PIPECTL (int ) ;
 int DWC3_GUSB3PIPECTL_DEP1P2P3_EN ;
 int DWC3_GUSB3PIPECTL_DEPOCHANGE ;
 int DWC3_GUSB3PIPECTL_DISRXDETINP3 ;
 int DWC3_GUSB3PIPECTL_LFPSFILT ;
 int DWC3_GUSB3PIPECTL_REQP1P2P3 ;
 int DWC3_GUSB3PIPECTL_RX_DETOPOLL ;
 int DWC3_GUSB3PIPECTL_SUSPHY ;
 int DWC3_GUSB3PIPECTL_TX_DEEPH (int ) ;
 int DWC3_GUSB3PIPECTL_U2SSINP3OK ;
 int DWC3_GUSB3PIPECTL_UX_EXIT_PX ;
 scalar_t__ DWC3_REVISION_194A ;


 int USBTRDTIM_UTMI_16_BIT ;
 int USBTRDTIM_UTMI_8_BIT ;
 int UTMI_PHYIF_16_BIT ;
 int UTMI_PHYIF_8_BIT ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int dwc3_phy_setup(struct dwc3 *dwc)
{
 u32 reg;

 reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));





 reg &= ~DWC3_GUSB3PIPECTL_UX_EXIT_PX;







 if (dwc->revision > DWC3_REVISION_194A)
  reg |= DWC3_GUSB3PIPECTL_SUSPHY;

 if (dwc->u2ss_inp3_quirk)
  reg |= DWC3_GUSB3PIPECTL_U2SSINP3OK;

 if (dwc->dis_rxdet_inp3_quirk)
  reg |= DWC3_GUSB3PIPECTL_DISRXDETINP3;

 if (dwc->req_p1p2p3_quirk)
  reg |= DWC3_GUSB3PIPECTL_REQP1P2P3;

 if (dwc->del_p1p2p3_quirk)
  reg |= DWC3_GUSB3PIPECTL_DEP1P2P3_EN;

 if (dwc->del_phy_power_chg_quirk)
  reg |= DWC3_GUSB3PIPECTL_DEPOCHANGE;

 if (dwc->lfps_filter_quirk)
  reg |= DWC3_GUSB3PIPECTL_LFPSFILT;

 if (dwc->rx_detect_poll_quirk)
  reg |= DWC3_GUSB3PIPECTL_RX_DETOPOLL;

 if (dwc->tx_de_emphasis_quirk)
  reg |= DWC3_GUSB3PIPECTL_TX_DEEPH(dwc->tx_de_emphasis);

 if (dwc->dis_u3_susphy_quirk)
  reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;

 if (dwc->dis_del_phy_power_chg_quirk)
  reg &= ~DWC3_GUSB3PIPECTL_DEPOCHANGE;

 dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);

 reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));


 switch (DWC3_GHWPARAMS3_HSPHY_IFC(dwc->hwparams.hwparams3)) {
 case 130:
  if (dwc->hsphy_interface &&
    !strncmp(dwc->hsphy_interface, "utmi", 4)) {
   reg &= ~DWC3_GUSB2PHYCFG_ULPI_UTMI;
   break;
  } else if (dwc->hsphy_interface &&
    !strncmp(dwc->hsphy_interface, "ulpi", 4)) {
   reg |= DWC3_GUSB2PHYCFG_ULPI_UTMI;
   dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
  } else {

   if (!(reg & DWC3_GUSB2PHYCFG_ULPI_UTMI))
    break;
  }

 case 131:

 default:
  break;
 }

 switch (dwc->hsphy_mode) {
 case 129:
  reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
         DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
  reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_8_BIT) |
         DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_8_BIT);
  break;
 case 128:
  reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
         DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
  reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_16_BIT) |
         DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_16_BIT);
  break;
 default:
  break;
 }







 if (dwc->revision > DWC3_REVISION_194A)
  reg |= DWC3_GUSB2PHYCFG_SUSPHY;

 if (dwc->dis_u2_susphy_quirk)
  reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;

 if (dwc->dis_enblslpm_quirk)
  reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
 else
  reg |= DWC3_GUSB2PHYCFG_ENBLSLPM;

 if (dwc->dis_u2_freeclk_exists_quirk)
  reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;

 dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);

 return 0;
}
