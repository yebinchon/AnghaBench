#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct cdns3_endpoint {int const type; int num; int dir; int interval; int trb_burst_size; int /*<<< orphan*/  name; struct cdns3_device* cdns3_dev; } ;
struct TYPE_3__ {int speed; } ;
struct cdns3_device {int /*<<< orphan*/  dev; TYPE_2__* regs; TYPE_1__ gadget; int /*<<< orphan*/  dev_ver; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep_cfg; } ;

/* Variables and functions */
 int CDNS3_EP_BUF_SIZE ; 
 int /*<<< orphan*/  CDNS3_EP_ISO_HS_MULT ; 
 int /*<<< orphan*/  CDNS3_EP_ISO_SS_BURST ; 
 int /*<<< orphan*/  DEV_VER_V2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int const) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int EP_CFG_TDL_CHK ; 
#define  USB_ENDPOINT_XFER_BULK 132 
#define  USB_ENDPOINT_XFER_INT 131 
 int const USB_ENDPOINT_XFER_ISOC ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC5 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int FUNC6 (struct cdns3_device*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

void FUNC11(struct cdns3_endpoint *priv_ep)
{
	bool is_iso_ep = (priv_ep->type == USB_ENDPOINT_XFER_ISOC);
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	u32 bEndpointAddress = priv_ep->num | priv_ep->dir;
	u32 max_packet_size = 0;
	u8 maxburst = 0;
	u32 ep_cfg = 0;
	u8 buffering;
	u8 mult = 0;
	int ret;

	buffering = CDNS3_EP_BUF_SIZE - 1;

	FUNC5(priv_dev, priv_ep);

	switch (priv_ep->type) {
	case USB_ENDPOINT_XFER_INT:
		ep_cfg = FUNC1(USB_ENDPOINT_XFER_INT);

		if ((priv_dev->dev_ver == DEV_VER_V2 && !priv_ep->dir) ||
		    priv_dev->dev_ver > DEV_VER_V2)
			ep_cfg |= EP_CFG_TDL_CHK;
		break;
	case USB_ENDPOINT_XFER_BULK:
		ep_cfg = FUNC1(USB_ENDPOINT_XFER_BULK);

		if ((priv_dev->dev_ver == DEV_VER_V2  && !priv_ep->dir) ||
		    priv_dev->dev_ver > DEV_VER_V2)
			ep_cfg |= EP_CFG_TDL_CHK;
		break;
	default:
		ep_cfg = FUNC1(USB_ENDPOINT_XFER_ISOC);
		mult = CDNS3_EP_ISO_HS_MULT - 1;
		buffering = mult + 1;
	}

	switch (priv_dev->gadget.speed) {
	case USB_SPEED_FULL:
		max_packet_size = is_iso_ep ? 1023 : 64;
		break;
	case USB_SPEED_HIGH:
		max_packet_size = is_iso_ep ? 1024 : 512;
		break;
	case USB_SPEED_SUPER:
		/* It's limitation that driver assumes in driver. */
		mult = 0;
		max_packet_size = 1024;
		if (priv_ep->type == USB_ENDPOINT_XFER_ISOC) {
			maxburst = CDNS3_EP_ISO_SS_BURST - 1;
			buffering = (mult + 1) *
				    (maxburst + 1);

			if (priv_ep->interval > 1)
				buffering++;
		} else {
			maxburst = CDNS3_EP_BUF_SIZE - 1;
		}
		break;
	default:
		/* all other speed are not supported */
		return;
	}

	if (max_packet_size == 1024)
		priv_ep->trb_burst_size = 128;
	else if (max_packet_size >= 512)
		priv_ep->trb_burst_size = 64;
	else
		priv_ep->trb_burst_size = 16;

	ret = FUNC6(priv_dev, buffering + 1,
					     !!priv_ep->dir);
	if (ret) {
		FUNC9(priv_dev->dev, "onchip mem is full, ep is invalid\n");
		return;
	}

	ep_cfg |= FUNC3(max_packet_size) |
		  FUNC4(mult) |
		  FUNC0(buffering) |
		  FUNC2(maxburst);

	FUNC7(priv_dev, bEndpointAddress);
	FUNC10(ep_cfg, &priv_dev->regs->ep_cfg);

	FUNC8(priv_dev->dev, "Configure %s: with val %08x\n",
		priv_ep->name, ep_cfg);
}