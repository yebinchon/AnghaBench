#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int speed; int ahbcfg; scalar_t__ service_interval; int /*<<< orphan*/  external_id_pin_ctl; scalar_t__ ipg_isoc_en; int /*<<< orphan*/  phy_type; } ;
struct dwc2_hsotg {int num_of_eps; int /*<<< orphan*/  dev; int /*<<< orphan*/  lx_state; TYPE_2__ params; TYPE_3__** eps_out; scalar_t__ dedicated_fifos; TYPE_1__** eps_in; } ;
struct TYPE_8__ {int /*<<< orphan*/  maxpacket; } ;
struct TYPE_7__ {TYPE_4__ ep; } ;
struct TYPE_5__ {TYPE_4__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAINTMSK ; 
 int /*<<< orphan*/  DCFG ; 
 int DCFG_DESCDMA_EN ; 
 int DCFG_DEVSPD_FS ; 
 int DCFG_DEVSPD_FS48 ; 
 int DCFG_DEVSPD_HS ; 
 int DCFG_DEVSPD_LS ; 
 int FUNC0 (int) ; 
 int DCFG_IPG_ISOC_SUPPORDED ; 
 int /*<<< orphan*/  DCTL ; 
 int DCTL_CGNPINNAK ; 
 int DCTL_CGOUTNAK ; 
 int DCTL_PWRONPRGDONE ; 
 int DCTL_SERVICE_INTERVAL_SUPPORTED ; 
 int DCTL_SFTDISCON ; 
 int /*<<< orphan*/  DIEPCTL0 ; 
 int /*<<< orphan*/  DIEPMSK ; 
 int DIEPMSK_AHBERRMSK ; 
 int DIEPMSK_BNAININTRMSK ; 
 int DIEPMSK_EPDISBLDMSK ; 
 int DIEPMSK_INTKNTXFEMPMSK ; 
 int DIEPMSK_TIMEOUTMSK ; 
 int DIEPMSK_TXFIFOEMPTY ; 
 int DIEPMSK_XFERCOMPLMSK ; 
 int /*<<< orphan*/  DOEPCTL0 ; 
 int /*<<< orphan*/  DOEPMSK ; 
 int DOEPMSK_AHBERRMSK ; 
 int DOEPMSK_BNAMSK ; 
 int DOEPMSK_EPDISBLDMSK ; 
 int DOEPMSK_SETUPMSK ; 
 int DOEPMSK_STSPHSERCVDMSK ; 
 int /*<<< orphan*/  DOEPTSIZ0 ; 
 int /*<<< orphan*/  DWC2_L0 ; 
 int /*<<< orphan*/  DWC2_PHY_TYPE_PARAM_FS ; 
#define  DWC2_SPEED_PARAM_FULL 129 
#define  DWC2_SPEED_PARAM_LOW 128 
 int DXEPCTL_CNAK ; 
 int DXEPCTL_EPENA ; 
 int DXEPCTL_USBACTEP ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  GAHBCFG ; 
 int GAHBCFG_DMA_EN ; 
 int GAHBCFG_GLBL_INTR_EN ; 
 int GAHBCFG_NP_TXF_EMP_LVL ; 
 int GAHBCFG_P_TXF_EMP_LVL ; 
 int /*<<< orphan*/  GINTMSK ; 
 int /*<<< orphan*/  GINTSTS ; 
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
 int /*<<< orphan*/  GOTGINT ; 
 int /*<<< orphan*/  GUSBCFG ; 
 int GUSBCFG_HNPCAP ; 
 int GUSBCFG_SRPCAP ; 
 int FUNC4 (int) ; 
 int GUSBCFG_TOUTCAL_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dwc2_hsotg*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC16 (struct dwc2_hsotg*,int) ; 
 int FUNC17 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct dwc2_hsotg*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 scalar_t__ FUNC23 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC24 (struct dwc2_hsotg*) ; 

void FUNC25(struct dwc2_hsotg *hsotg,
				       bool is_usb_reset)
{
	u32 intmsk;
	u32 val;
	u32 usbcfg;
	u32 dcfg = 0;
	int ep;

	/* Kill any ep0 requests as controller will be reinitialized */
	FUNC20(hsotg, hsotg->eps_out[0], -ECONNRESET);

	if (!is_usb_reset) {
		if (FUNC7(hsotg, true))
			return;
	} else {
		/* all endpoints should be shutdown */
		for (ep = 1; ep < hsotg->num_of_eps; ep++) {
			if (hsotg->eps_in[ep])
				FUNC14(&hsotg->eps_in[ep]->ep);
			if (hsotg->eps_out[ep])
				FUNC14(&hsotg->eps_out[ep]->ep);
		}
	}

	/*
	 * we must now enable ep0 ready for host detection and then
	 * set configuration.
	 */

	/* keep other bits untouched (so e.g. forced modes are not lost) */
	usbcfg = FUNC17(hsotg, GUSBCFG);
	usbcfg &= ~GUSBCFG_TOUTCAL_MASK;
	usbcfg |= FUNC4(7);

	/* remove the HNP/SRP and set the PHY */
	usbcfg &= ~(GUSBCFG_SRPCAP | GUSBCFG_HNPCAP);
        FUNC19(hsotg, usbcfg, GUSBCFG);

	FUNC16(hsotg, true);

	FUNC15(hsotg);

	if (!is_usb_reset)
		FUNC18(hsotg, DCTL, DCTL_SFTDISCON);

	dcfg |= FUNC0(1);

	switch (hsotg->params.speed) {
	case DWC2_SPEED_PARAM_LOW:
		dcfg |= DCFG_DEVSPD_LS;
		break;
	case DWC2_SPEED_PARAM_FULL:
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

	FUNC19(hsotg, dcfg,  DCFG);

	/* Clear any pending OTG interrupts */
	FUNC19(hsotg, 0xffffffff, GOTGINT);

	/* Clear any pending interrupts */
	FUNC19(hsotg, 0xffffffff, GINTSTS);
	intmsk = GINTSTS_ERLYSUSP | GINTSTS_SESSREQINT |
		GINTSTS_GOUTNAKEFF | GINTSTS_GINNAKEFF |
		GINTSTS_USBRST | GINTSTS_RESETDET |
		GINTSTS_ENUMDONE | GINTSTS_OTGINT |
		GINTSTS_USBSUSP | GINTSTS_WKUPINT |
		GINTSTS_LPMTRANRCVD;

	if (!FUNC23(hsotg))
		intmsk |= GINTSTS_INCOMPL_SOIN | GINTSTS_INCOMPL_SOOUT;

	if (!hsotg->params.external_id_pin_ctl)
		intmsk |= GINTSTS_CONIDSTSCHNG;

	FUNC19(hsotg, intmsk, GINTMSK);

	if (FUNC24(hsotg)) {
		FUNC19(hsotg, GAHBCFG_GLBL_INTR_EN | GAHBCFG_DMA_EN |
			    hsotg->params.ahbcfg,
			    GAHBCFG);

		/* Set DDMA mode support in the core if needed */
		if (FUNC23(hsotg))
			FUNC18(hsotg, DCFG, DCFG_DESCDMA_EN);

	} else {
		FUNC19(hsotg, ((hsotg->dedicated_fifos) ?
						(GAHBCFG_NP_TXF_EMP_LVL |
						 GAHBCFG_P_TXF_EMP_LVL) : 0) |
			    GAHBCFG_GLBL_INTR_EN, GAHBCFG);
	}

	/*
	 * If INTknTXFEmpMsk is enabled, it's important to disable ep interrupts
	 * when we have no data to transfer. Otherwise we get being flooded by
	 * interrupts.
	 */

	FUNC19(hsotg, ((hsotg->dedicated_fifos && !FUNC24(hsotg)) ?
		DIEPMSK_TXFIFOEMPTY | DIEPMSK_INTKNTXFEMPMSK : 0) |
		DIEPMSK_EPDISBLDMSK | DIEPMSK_XFERCOMPLMSK |
		DIEPMSK_TIMEOUTMSK | DIEPMSK_AHBERRMSK,
		DIEPMSK);

	/*
	 * don't need XferCompl, we get that from RXFIFO in slave mode. In
	 * DMA mode we may need this and StsPhseRcvd.
	 */
	FUNC19(hsotg, (FUNC24(hsotg) ? (DIEPMSK_XFERCOMPLMSK |
		DOEPMSK_STSPHSERCVDMSK) : 0) |
		DOEPMSK_EPDISBLDMSK | DOEPMSK_AHBERRMSK |
		DOEPMSK_SETUPMSK,
		DOEPMSK);

	/* Enable BNA interrupt for DDMA */
	if (FUNC23(hsotg)) {
		FUNC18(hsotg, DOEPMSK, DOEPMSK_BNAMSK);
		FUNC18(hsotg, DIEPMSK, DIEPMSK_BNAININTRMSK);
	}

	/* Enable Service Interval mode if supported */
	if (FUNC23(hsotg) && hsotg->params.service_interval)
		FUNC18(hsotg, DCTL, DCTL_SERVICE_INTERVAL_SUPPORTED);

	FUNC19(hsotg, 0, DAINTMSK);

	FUNC5(hsotg->dev, "EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\n",
		FUNC17(hsotg, DIEPCTL0),
		FUNC17(hsotg, DOEPCTL0));

	/* enable in and out endpoint interrupts */
	FUNC11(hsotg, GINTSTS_OEPINT | GINTSTS_IEPINT);

	/*
	 * Enable the RXFIFO when in slave mode, as this is how we collect
	 * the data. In DMA mode, we get events from the FIFO but also
	 * things we cannot process, so do not use it.
	 */
	if (!FUNC24(hsotg))
		FUNC11(hsotg, GINTSTS_RXFLVL);

	/* Enable interrupts for EP0 in and out */
	FUNC10(hsotg, 0, 0, 1);
	FUNC10(hsotg, 0, 1, 1);

	if (!is_usb_reset) {
		FUNC18(hsotg, DCTL, DCTL_PWRONPRGDONE);
		FUNC22(10);  /* see openiboot */
		FUNC6(hsotg, DCTL, DCTL_PWRONPRGDONE);
	}

	FUNC5(hsotg->dev, "DCTL=0x%08x\n", FUNC17(hsotg, DCTL));

	/*
	 * DxEPCTL_USBActEp says RO in manual, but seems to be set by
	 * writing to the EPCTL register..
	 */

	/* set to read 1 8byte packet */
	FUNC19(hsotg, FUNC1(1) | FUNC2(1) |
	       FUNC3(8), DOEPTSIZ0);

	FUNC19(hsotg, FUNC13(hsotg->eps_out[0]->ep.maxpacket) |
	       DXEPCTL_CNAK | DXEPCTL_EPENA |
	       DXEPCTL_USBACTEP,
	       DOEPCTL0);

	/* enable, but don't activate EP0in */
	FUNC19(hsotg, FUNC13(hsotg->eps_out[0]->ep.maxpacket) |
	       DXEPCTL_USBACTEP, DIEPCTL0);

	/* clear global NAKs */
	val = DCTL_CGOUTNAK | DCTL_CGNPINNAK;
	if (!is_usb_reset)
		val |= DCTL_SFTDISCON;
	FUNC18(hsotg, DCTL, val);

	/* configure the core to support LPM */
	FUNC8(hsotg);

	/* program GREFCLK register if needed */
	if (FUNC23(hsotg) && hsotg->params.service_interval)
		FUNC9(hsotg);

	/* must be at-least 3ms to allow bus to see disconnect */
	FUNC21(3);

	hsotg->lx_state = DWC2_L0;

	FUNC12(hsotg);

	FUNC5(hsotg->dev, "EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\n",
		FUNC17(hsotg, DIEPCTL0),
		FUNC17(hsotg, DOEPCTL0));
}