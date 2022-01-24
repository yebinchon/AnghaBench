#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_request {int num_sgs; int length; TYPE_4__* sg; int /*<<< orphan*/  dma; } ;
struct cdns3_trb {int control; int length; int /*<<< orphan*/  buffer; } ;
struct cdns3_request {int flags; int start_trb; int end_trb; struct cdns3_trb* trb; TYPE_2__* aligned_buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  maxpacket; TYPE_1__* desc; } ;
struct cdns3_endpoint {scalar_t__ type; int interval; int free_trbs; int flags; int enqueue; int num_trbs; int pcs; int /*<<< orphan*/  name; int /*<<< orphan*/  wa1_set; scalar_t__ trb_pool_dma; int /*<<< orphan*/  dir; struct cdns3_trb* trb_pool; int /*<<< orphan*/  trb_burst_size; TYPE_5__ endpoint; struct cdns3_device* cdns3_dev; } ;
struct TYPE_12__ {scalar_t__ speed; } ;
struct cdns3_device {scalar_t__ dev_ver; TYPE_3__* regs; TYPE_6__ gadget; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_10__ {int length; int /*<<< orphan*/  dma_address; } ;
struct TYPE_9__ {int /*<<< orphan*/  ep_traddr; int /*<<< orphan*/  ep_cmd; int /*<<< orphan*/  ep_sts; int /*<<< orphan*/  ep_cfg; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma; } ;
struct TYPE_7__ {int bEndpointAddress; } ;

/* Variables and functions */
 scalar_t__ DEV_VER_V2 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  EP_CFG_ENABLE ; 
 int EP_CMD_DRDY ; 
 int EP_DEFERRED_DRDY ; 
 int EP_PENDING_REQUEST ; 
 int EP_QUIRK_ISO_OUT_EN ; 
 int EP_RING_FULL ; 
 int EP_STALLED ; 
 int EP_STS_DESCMIS ; 
 int EP_STS_TRBERR ; 
 int FUNC1 (scalar_t__) ; 
 int EP_UPDATE_EP_TRBADDR ; 
 int REQUEST_PENDING ; 
 int REQUEST_UNALIGNED ; 
 int TRBS_PER_SEGMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int TRB_CHAIN ; 
 int TRB_CYCLE ; 
 int TRB_IOC ; 
 int TRB_ISP ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  TRB_LINK ; 
 int /*<<< orphan*/  TRB_NORMAL ; 
 int TRB_SIZE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int TRB_TOGGLE ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 scalar_t__ USB_SPEED_SUPER ; 
 int /*<<< orphan*/  FUNC8 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct cdns3_endpoint*) ; 
 int FUNC10 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC11 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int FUNC14 (struct cdns3_endpoint*,struct cdns3_trb*) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 struct cdns3_request* FUNC17 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct cdns3_endpoint*,struct cdns3_trb*) ; 
 int /*<<< orphan*/  FUNC20 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ *) ; 

int FUNC23(struct cdns3_endpoint *priv_ep,
			  struct usb_request *request)
{
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	struct cdns3_request *priv_req;
	struct cdns3_trb *trb;
	dma_addr_t trb_dma;
	u32 togle_pcs = 1;
	int sg_iter = 0;
	int num_trb;
	int address;
	u32 control;
	int pcs;

	if (priv_ep->type == USB_ENDPOINT_XFER_ISOC)
		num_trb = priv_ep->interval;
	else
		num_trb = request->num_sgs ? request->num_sgs : 1;

	if (num_trb > priv_ep->free_trbs) {
		priv_ep->flags |= EP_RING_FULL;
		return -ENOBUFS;
	}

	priv_req = FUNC17(request);
	address = priv_ep->endpoint.desc->bEndpointAddress;

	priv_ep->flags |= EP_PENDING_REQUEST;

	/* must allocate buffer aligned to 8 */
	if (priv_req->flags & REQUEST_UNALIGNED)
		trb_dma = priv_req->aligned_buf->dma;
	else
		trb_dma = request->dma;

	trb = priv_ep->trb_pool + priv_ep->enqueue;
	priv_req->start_trb = priv_ep->enqueue;
	priv_req->trb = trb;

	FUNC11(priv_ep->cdns3_dev, address);

	/* prepare ring */
	if ((priv_ep->enqueue + num_trb)  >= (priv_ep->num_trbs - 1)) {
		struct cdns3_trb *link_trb;
		int doorbell, dma_index;
		u32 ch_bit = 0;

		doorbell = !!(FUNC16(&priv_dev->regs->ep_cmd) & EP_CMD_DRDY);
		dma_index = FUNC10(priv_dev, priv_ep);

		/* Driver can't update LINK TRB if it is current processed. */
		if (doorbell && dma_index == priv_ep->num_trbs - 1) {
			priv_ep->flags |= EP_DEFERRED_DRDY;
			return -ENOBUFS;
		}

		/*updating C bt in  Link TRB before starting DMA*/
		link_trb = priv_ep->trb_pool + (priv_ep->num_trbs - 1);
		/*
		 * For TRs size equal 2 enabling TRB_CHAIN for epXin causes
		 * that DMA stuck at the LINK TRB.
		 * On the other hand, removing TRB_CHAIN for longer TRs for
		 * epXout cause that DMA stuck after handling LINK TRB.
		 * To eliminate this strange behavioral driver set TRB_CHAIN
		 * bit only for TR size > 2.
		 */
		if (priv_ep->type == USB_ENDPOINT_XFER_ISOC ||
		    TRBS_PER_SEGMENT > 2)
			ch_bit = TRB_CHAIN;

		link_trb->control = ((priv_ep->pcs) ? TRB_CYCLE : 0) |
				    FUNC7(TRB_LINK) | TRB_TOGGLE | ch_bit;
	}

	if (priv_dev->dev_ver <= DEV_VER_V2)
		togle_pcs = FUNC14(priv_ep, trb);

	/* set incorrect Cycle Bit for first trb*/
	control = priv_ep->pcs ? 0 : TRB_CYCLE;

	do {
		u32 length;
		u16 td_size = 0;

		/* fill TRB */
		control |= FUNC7(TRB_NORMAL);
		trb->buffer = FUNC2(request->num_sgs == 0
				? trb_dma : request->sg[sg_iter].dma_address);

		if (FUNC15(!request->num_sgs))
			length = request->length;
		else
			length = request->sg[sg_iter].length;

		if (FUNC15(priv_dev->dev_ver >= DEV_VER_V2))
			td_size = FUNC0(length,
					       priv_ep->endpoint.maxpacket);

		trb->length = FUNC3(priv_ep->trb_burst_size) |
					FUNC4(length);
		if (priv_dev->gadget.speed == USB_SPEED_SUPER)
			trb->length |= FUNC6(td_size);
		else
			control |= FUNC5(td_size);

		pcs = priv_ep->pcs ? TRB_CYCLE : 0;

		/*
		 * first trb should be prepared as last to avoid processing
		 *  transfer to early
		 */
		if (sg_iter != 0)
			control |= pcs;

		if (priv_ep->type == USB_ENDPOINT_XFER_ISOC  && !priv_ep->dir) {
			control |= TRB_IOC | TRB_ISP;
		} else {
			/* for last element in TD or in SG list */
			if (sg_iter == (num_trb - 1) && sg_iter != 0)
				control |= pcs | TRB_IOC | TRB_ISP;
		}

		if (sg_iter)
			trb->control = control;
		else
			priv_req->trb->control = control;

		control = 0;
		++sg_iter;
		priv_req->end_trb = priv_ep->enqueue;
		FUNC9(priv_ep);
		trb = priv_ep->trb_pool + priv_ep->enqueue;
	} while (sg_iter < num_trb);

	trb = priv_req->trb;

	priv_req->flags |= REQUEST_PENDING;

	if (sg_iter == 1)
		trb->control |= TRB_IOC | TRB_ISP;

	/*
	 * Memory barrier - cycle bit must be set before other filds in trb.
	 */
	FUNC21();

	/* give the TD to the consumer*/
	if (togle_pcs)
		trb->control =  trb->control ^ 1;

	if (priv_dev->dev_ver <= DEV_VER_V2)
		FUNC13(priv_dev, priv_ep);

	FUNC19(priv_ep, priv_req->trb);

	/*
	 * Memory barrier - Cycle Bit must be set before trb->length  and
	 * trb->buffer fields.
	 */
	FUNC21();

	/*
	 * For DMULT mode we can set address to transfer ring only once after
	 * enabling endpoint.
	 */
	if (priv_ep->flags & EP_UPDATE_EP_TRBADDR) {
		/*
		 * Until SW is not ready to handle the OUT transfer the ISO OUT
		 * Endpoint should be disabled (EP_CFG.ENABLE = 0).
		 * EP_CFG_ENABLE must be set before updating ep_traddr.
		 */
		if (priv_ep->type == USB_ENDPOINT_XFER_ISOC  && !priv_ep->dir &&
		    !(priv_ep->flags & EP_QUIRK_ISO_OUT_EN)) {
			priv_ep->flags |= EP_QUIRK_ISO_OUT_EN;
			FUNC12(&priv_dev->regs->ep_cfg,
					       EP_CFG_ENABLE);
		}

		FUNC22(FUNC1(priv_ep->trb_pool_dma +
					priv_req->start_trb * TRB_SIZE),
					&priv_dev->regs->ep_traddr);

		priv_ep->flags &= ~EP_UPDATE_EP_TRBADDR;
	}

	if (!priv_ep->wa1_set && !(priv_ep->flags & EP_STALLED)) {
		FUNC20(priv_ep);
		/*clearing TRBERR and EP_STS_DESCMIS before seting DRDY*/
		FUNC22(EP_STS_TRBERR | EP_STS_DESCMIS, &priv_dev->regs->ep_sts);
		FUNC22(EP_CMD_DRDY, &priv_dev->regs->ep_cmd);
		FUNC18(priv_ep->name,
					 FUNC16(&priv_dev->regs->ep_traddr));
	}

	/* WORKAROUND for transition to L0 */
	FUNC8(priv_dev);

	return 0;
}