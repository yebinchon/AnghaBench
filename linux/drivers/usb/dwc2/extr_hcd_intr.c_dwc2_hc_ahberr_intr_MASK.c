#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct dwc2_qtd {struct dwc2_hcd_urb* urb; } ;
struct TYPE_2__ {scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {TYPE_1__ params; int /*<<< orphan*/  dev; } ;
struct dwc2_host_chan {int speed; } ;
struct dwc2_hcd_urb {char* length; char* interval; scalar_t__ setup_dma; int /*<<< orphan*/  setup_packet; scalar_t__ dma; int /*<<< orphan*/  buf; int /*<<< orphan*/  pipe_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_HC_XFER_AHB_ERR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  HCINTMSK_AHBERR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  USB_ENDPOINT_XFER_BULK 134 
#define  USB_ENDPOINT_XFER_CONTROL 133 
#define  USB_ENDPOINT_XFER_INT 132 
#define  USB_ENDPOINT_XFER_ISOC 131 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc2_hsotg*,struct dwc2_host_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct dwc2_hsotg*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct dwc2_hsotg *hsotg,
				struct dwc2_host_chan *chan, int chnum,
				struct dwc2_qtd *qtd)
{
	struct dwc2_hcd_urb *urb = qtd->urb;
	char *pipetype, *speed;
	u32 hcchar;
	u32 hcsplt;
	u32 hctsiz;
	u32 hc_dma;

	FUNC4(hsotg->dev, "--Host Channel %d Interrupt: AHB Error--\n",
		chnum);

	if (!urb)
		goto handle_ahberr_halt;

	FUNC8(hsotg, chan, qtd);

	hcchar = FUNC17(hsotg, FUNC0(chnum));
	hcsplt = FUNC17(hsotg, FUNC2(chnum));
	hctsiz = FUNC17(hsotg, FUNC3(chnum));
	hc_dma = FUNC17(hsotg, FUNC1(chnum));

	FUNC5(hsotg->dev, "AHB ERROR, Channel %d\n", chnum);
	FUNC5(hsotg->dev, "  hcchar 0x%08x, hcsplt 0x%08x\n", hcchar, hcsplt);
	FUNC5(hsotg->dev, "  hctsiz 0x%08x, hc_dma 0x%08x\n", hctsiz, hc_dma);
	FUNC5(hsotg->dev, "  Device address: %d\n",
		FUNC10(&urb->pipe_info));
	FUNC5(hsotg->dev, "  Endpoint: %d, %s\n",
		FUNC11(&urb->pipe_info),
		FUNC15(&urb->pipe_info) ? "IN" : "OUT");

	switch (FUNC14(&urb->pipe_info)) {
	case USB_ENDPOINT_XFER_CONTROL:
		pipetype = "CONTROL";
		break;
	case USB_ENDPOINT_XFER_BULK:
		pipetype = "BULK";
		break;
	case USB_ENDPOINT_XFER_INT:
		pipetype = "INTERRUPT";
		break;
	case USB_ENDPOINT_XFER_ISOC:
		pipetype = "ISOCHRONOUS";
		break;
	default:
		pipetype = "UNKNOWN";
		break;
	}

	FUNC5(hsotg->dev, "  Endpoint type: %s\n", pipetype);

	switch (chan->speed) {
	case USB_SPEED_HIGH:
		speed = "HIGH";
		break;
	case USB_SPEED_FULL:
		speed = "FULL";
		break;
	case USB_SPEED_LOW:
		speed = "LOW";
		break;
	default:
		speed = "UNKNOWN";
		break;
	}

	FUNC5(hsotg->dev, "  Speed: %s\n", speed);

	FUNC5(hsotg->dev, "  Max packet size: %d (mult %d)\n",
		FUNC12(&urb->pipe_info),
		FUNC13(&urb->pipe_info));
	FUNC5(hsotg->dev, "  Data buffer length: %d\n", urb->length);
	FUNC5(hsotg->dev, "  Transfer buffer: %p, Transfer DMA: %08lx\n",
		urb->buf, (unsigned long)urb->dma);
	FUNC5(hsotg->dev, "  Setup buffer: %p, Setup DMA: %08lx\n",
		urb->setup_packet, (unsigned long)urb->setup_dma);
	FUNC5(hsotg->dev, "  Interval: %d\n", urb->interval);

	/* Core halts the channel for Descriptor DMA mode */
	if (hsotg->params.dma_desc_enable) {
		FUNC9(hsotg, chan, chnum,
					    DWC2_HC_XFER_AHB_ERR);
		goto handle_ahberr_done;
	}

	FUNC16(hsotg, qtd, -EIO);

handle_ahberr_halt:
	/*
	 * Force a channel halt. Don't call dwc2_halt_channel because that won't
	 * write to the HCCHARn register in DMA mode to force the halt.
	 */
	FUNC7(hsotg, chan, DWC2_HC_XFER_AHB_ERR);

handle_ahberr_done:
	FUNC6(hsotg, chnum, HCINTMSK_AHBERR);
}