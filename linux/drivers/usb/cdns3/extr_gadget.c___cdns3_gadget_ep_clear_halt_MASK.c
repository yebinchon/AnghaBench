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
struct usb_request {int dummy; } ;
struct cdns3_endpoint {int flags; int /*<<< orphan*/  pending_req_list; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int EP_CMD_CSTALL ; 
 int EP_CMD_EPRST ; 
 int EP_STALLED ; 
 int EP_STALL_PENDING ; 
 struct usb_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_endpoint*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_endpoint*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

int FUNC6(struct cdns3_endpoint *priv_ep)
{
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	struct usb_request *request;
	int ret;
	int val;

	FUNC4(priv_ep, 0, 0);

	FUNC5(EP_CMD_CSTALL | EP_CMD_EPRST, &priv_dev->regs->ep_cmd);

	/* wait for EPRST cleared */
	ret = FUNC3(&priv_dev->regs->ep_cmd, val,
					!(val & EP_CMD_EPRST), 1, 100);
	if (ret)
		return -EINVAL;

	priv_ep->flags &= ~(EP_STALLED | EP_STALL_PENDING);

	request = FUNC0(&priv_ep->pending_req_list);

	if (request)
		FUNC1(priv_ep, 1);

	FUNC2(priv_dev, priv_ep);
	return ret;
}