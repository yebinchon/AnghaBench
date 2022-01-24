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
typedef  int u32 ;
struct usb_ep {struct usb_endpoint_descriptor const* desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; scalar_t__ bInterval; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor const* desc; } ;
struct cdns3_endpoint {int flags; scalar_t__ type; int num; int dir; int pcs; int ccs; scalar_t__ num_trbs; scalar_t__ free_trbs; scalar_t__ dequeue; scalar_t__ enqueue; scalar_t__ wa1_set; int /*<<< orphan*/  interval; TYPE_1__ endpoint; int /*<<< orphan*/  name; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ dev_ver; int /*<<< orphan*/  lock; TYPE_2__* regs; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep_sts; int /*<<< orphan*/  ep_cfg; int /*<<< orphan*/  ep_sts_en; int /*<<< orphan*/  ep_ien; int /*<<< orphan*/  ep_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ DEV_VER_V2 ; 
 int EINVAL ; 
 int /*<<< orphan*/  EP_CFG_ENABLE ; 
 int EP_CMD_CSTALL ; 
 int EP_CMD_EPRST ; 
 int EP_ENABLED ; 
 int EP_PENDING_REQUEST ; 
 int EP_QUIRK_EXTRA_BUF_EN ; 
 int EP_QUIRK_ISO_OUT_EN ; 
 int EP_STALLED ; 
 int EP_STALL_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EP_STS_EN_TRBERREN ; 
 int EP_UPDATE_EP_TRBADDR ; 
 int /*<<< orphan*/  ISO_MAX_INTERVAL ; 
 scalar_t__ USB_DT_ENDPOINT ; 
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 int FUNC2 (struct cdns3_endpoint*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns3_device*,struct cdns3_endpoint*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 struct cdns3_endpoint* FUNC11 (struct usb_ep*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct cdns3_endpoint*) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct usb_ep *ep,
				  const struct usb_endpoint_descriptor *desc)
{
	struct cdns3_endpoint *priv_ep;
	struct cdns3_device *priv_dev;
	u32 reg = EP_STS_EN_TRBERREN;
	u32 bEndpointAddress;
	unsigned long flags;
	int enable = 1;
	int ret;
	int val;

	priv_ep = FUNC11(ep);
	priv_dev = priv_ep->cdns3_dev;

	if (!ep || !desc || desc->bDescriptorType != USB_DT_ENDPOINT) {
		FUNC9(priv_dev->dev, "usbss: invalid parameters\n");
		return -EINVAL;
	}

	if (!desc->wMaxPacketSize) {
		FUNC10(priv_dev->dev, "usbss: missing wMaxPacketSize\n");
		return -EINVAL;
	}

	if (FUNC8(priv_dev->dev, priv_ep->flags & EP_ENABLED,
			  "%s is already enabled\n", priv_ep->name))
		return 0;

	FUNC14(&priv_dev->lock, flags);

	priv_ep->endpoint.desc = desc;
	priv_ep->type = FUNC18(desc);
	priv_ep->interval = desc->bInterval ? FUNC0(desc->bInterval - 1) : 0;

	if (priv_ep->interval > ISO_MAX_INTERVAL &&
	    priv_ep->type == USB_ENDPOINT_XFER_ISOC) {
		FUNC10(priv_dev->dev, "Driver is limited to %d period\n",
			ISO_MAX_INTERVAL);

		ret =  -EINVAL;
		goto exit;
	}

	ret = FUNC2(priv_ep);

	if (ret)
		goto exit;

	bEndpointAddress = priv_ep->num | priv_ep->dir;
	FUNC5(priv_dev, bEndpointAddress);

	FUNC16(priv_ep);

	FUNC19(EP_CMD_EPRST, &priv_dev->regs->ep_cmd);

	ret = FUNC13(&priv_dev->regs->ep_cmd, val,
					!(val & (EP_CMD_CSTALL | EP_CMD_EPRST)),
					1, 1000);

	if (FUNC17(ret)) {
		FUNC4(priv_ep);
		ret =  -EINVAL;
		goto exit;
	}

	/* enable interrupt for selected endpoint */
	FUNC6(&priv_dev->regs->ep_ien,
			       FUNC0(FUNC3(bEndpointAddress)));

	if (priv_dev->dev_ver < DEV_VER_V2)
		FUNC7(priv_dev, priv_ep, reg);

	FUNC19(reg, &priv_dev->regs->ep_sts_en);

	/*
	 * For some versions of controller at some point during ISO OUT traffic
	 * DMA reads Transfer Ring for the EP which has never got doorbell.
	 * This issue was detected only on simulation, but to avoid this issue
	 * driver add protection against it. To fix it driver enable ISO OUT
	 * endpoint before setting DRBL. This special treatment of ISO OUT
	 * endpoints are recommended by controller specification.
	 */
	if (priv_ep->type == USB_ENDPOINT_XFER_ISOC  && !priv_ep->dir)
		enable = 0;

	if (enable)
		FUNC6(&priv_dev->regs->ep_cfg, EP_CFG_ENABLE);

	ep->desc = desc;
	priv_ep->flags &= ~(EP_PENDING_REQUEST | EP_STALLED | EP_STALL_PENDING |
			    EP_QUIRK_ISO_OUT_EN | EP_QUIRK_EXTRA_BUF_EN);
	priv_ep->flags |= EP_ENABLED | EP_UPDATE_EP_TRBADDR;
	priv_ep->wa1_set = 0;
	priv_ep->enqueue = 0;
	priv_ep->dequeue = 0;
	reg = FUNC12(&priv_dev->regs->ep_sts);
	priv_ep->pcs = !!FUNC1(reg);
	priv_ep->ccs = !!FUNC1(reg);
	/* one TRB is reserved for link TRB used in DMULT mode*/
	priv_ep->free_trbs = priv_ep->num_trbs - 1;
exit:
	FUNC15(&priv_dev->lock, flags);

	return ret;
}