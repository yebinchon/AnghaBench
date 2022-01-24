#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_request {int dummy; } ;
struct usb_ep {TYPE_2__* desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct cdns3_request {int /*<<< orphan*/  list; TYPE_3__ request; } ;
struct cdns3_endpoint {int flags; int /*<<< orphan*/ * descmis_req; int /*<<< orphan*/  deferred_req_list; int /*<<< orphan*/  wa2_counter; int /*<<< orphan*/  endpoint; int /*<<< orphan*/  wa2_descmiss_req_list; int /*<<< orphan*/  pending_req_list; int /*<<< orphan*/  name; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__* regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep_cmd; int /*<<< orphan*/  ep_sts; int /*<<< orphan*/  ep_cfg; } ;

/* Variables and functions */
 int EINVAL ; 
 int EP_CFG_ENABLE ; 
 int EP_CMD_CSTALL ; 
 int EP_CMD_EPRST ; 
 int EP_ENABLED ; 
 int EP_STS_DBUSY ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_endpoint*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cdns3_request* FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_request* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct cdns3_endpoint* FUNC7 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC17 (struct cdns3_endpoint*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct usb_ep *ep)
{
	struct cdns3_endpoint *priv_ep;
	struct cdns3_request *priv_req;
	struct cdns3_device *priv_dev;
	struct usb_request *request;
	unsigned long flags;
	int ret = 0;
	u32 ep_cfg;
	int val;

	if (!ep) {
		FUNC11("usbss: invalid parameters\n");
		return -EINVAL;
	}

	priv_ep = FUNC7(ep);
	priv_dev = priv_ep->cdns3_dev;

	if (FUNC5(priv_dev->dev, !(priv_ep->flags & EP_ENABLED),
			  "%s is already disabled\n", priv_ep->name))
		return 0;

	FUNC14(&priv_dev->lock, flags);

	FUNC17(priv_ep);

	FUNC4(priv_dev, ep->desc->bEndpointAddress);

	ep_cfg = FUNC12(&priv_dev->regs->ep_cfg);
	ep_cfg &= ~EP_CFG_ENABLE;
	FUNC19(ep_cfg, &priv_dev->regs->ep_cfg);

	/**
	 * Driver needs some time before resetting endpoint.
	 * It need waits for clearing DBUSY bit or for timeout expired.
	 * 10us is enough time for controller to stop transfer.
	 */
	FUNC13(&priv_dev->regs->ep_sts, val,
				  !(val & EP_STS_DBUSY), 1, 10);
	FUNC19(EP_CMD_EPRST, &priv_dev->regs->ep_cmd);

	FUNC13(&priv_dev->regs->ep_cmd, val,
				  !(val & (EP_CMD_CSTALL | EP_CMD_EPRST)),
				  1, 1000);
	if (FUNC18(ret))
		FUNC6(priv_dev->dev, "Timeout: %s resetting failed.\n",
			priv_ep->name);

	while (!FUNC10(&priv_ep->pending_req_list)) {
		request = FUNC3(&priv_ep->pending_req_list);

		FUNC1(priv_ep, FUNC16(request),
				      -ESHUTDOWN);
	}

	while (!FUNC10(&priv_ep->wa2_descmiss_req_list)) {
		priv_req = FUNC2(&priv_ep->wa2_descmiss_req_list);

		FUNC8(priv_req->request.buf);
		FUNC0(&priv_ep->endpoint,
					     &priv_req->request);
		FUNC9(&priv_req->list);
		--priv_ep->wa2_counter;
	}

	while (!FUNC10(&priv_ep->deferred_req_list)) {
		request = FUNC3(&priv_ep->deferred_req_list);

		FUNC1(priv_ep, FUNC16(request),
				      -ESHUTDOWN);
	}

	priv_ep->descmis_req = NULL;

	ep->desc = NULL;
	priv_ep->flags &= ~EP_ENABLED;

	FUNC15(&priv_dev->lock, flags);

	return ret;
}