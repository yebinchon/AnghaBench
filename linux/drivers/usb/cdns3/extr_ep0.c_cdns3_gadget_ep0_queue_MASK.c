#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct usb_request {int length; int /*<<< orphan*/  dma; scalar_t__ zero; int /*<<< orphan*/  list; int /*<<< orphan*/  status; scalar_t__ actual; } ;
struct usb_ep {int maxpacket; } ;
struct cdns3_endpoint {int /*<<< orphan*/  pending_req_list; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ ep0_stage; int status_completion_no_call; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  ep0_data_dir; int /*<<< orphan*/  sysdev; int /*<<< orphan*/  pending_status_wq; struct usb_request* pending_status_request; int /*<<< orphan*/  hw_configured_flag; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ CDNS3_STATUS_STAGE ; 
 int EBUSY ; 
 int ECONNRESET ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*,int) ; 
 scalar_t__ FUNC1 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns3_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct cdns3_endpoint* FUNC7 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_freezable_wq ; 
 int /*<<< orphan*/  FUNC13 (struct cdns3_device*,struct usb_request*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct usb_ep *ep,
				  struct usb_request *request,
				  gfp_t gfp_flags)
{
	struct cdns3_endpoint *priv_ep = FUNC7(ep);
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	unsigned long flags;
	int erdy_sent = 0;
	int ret = 0;
	u8 zlp = 0;

	FUNC13(priv_dev, request);

	/* cancel the request if controller receive new SETUP packet. */
	if (FUNC1(priv_dev))
		return -ECONNRESET;

	/* send STATUS stage. Should be called only for SET_CONFIGURATION */
	if (priv_dev->ep0_stage == CDNS3_STATUS_STAGE) {
		FUNC11(&priv_dev->lock, flags);
		FUNC4(priv_dev, 0x00);

		erdy_sent = !priv_dev->hw_configured_flag;
		FUNC5(priv_dev);

		if (!erdy_sent)
			FUNC2(priv_dev, 0, 1);

		FUNC0(priv_dev, 1);

		request->actual = 0;
		priv_dev->status_completion_no_call = true;
		priv_dev->pending_status_request = request;
		FUNC12(&priv_dev->lock, flags);

		/*
		 * Since there is no completion interrupt for status stage,
		 * it needs to call ->completion in software after
		 * ep0_queue is back.
		 */
		FUNC10(system_freezable_wq, &priv_dev->pending_status_wq);
		return 0;
	}

	FUNC11(&priv_dev->lock, flags);
	if (!FUNC9(&priv_ep->pending_req_list)) {
		FUNC6(priv_dev->dev,
			"can't handle multiple requests for ep0\n");
		FUNC12(&priv_dev->lock, flags);
		return -EBUSY;
	}

	ret = FUNC14(priv_dev->sysdev, request,
					    priv_dev->ep0_data_dir);
	if (ret) {
		FUNC12(&priv_dev->lock, flags);
		FUNC6(priv_dev->dev, "failed to map request\n");
		return -EINVAL;
	}

	request->status = -EINPROGRESS;
	FUNC8(&request->list, &priv_ep->pending_req_list);

	if (request->zero && request->length &&
	    (request->length % ep->maxpacket == 0))
		zlp = 1;

	FUNC3(priv_dev, request->dma, request->length, 1, zlp);

	FUNC12(&priv_dev->lock, flags);

	return ret;
}