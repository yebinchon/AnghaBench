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
typedef  scalar_t__ u8 ;
struct usb_request {int /*<<< orphan*/  list; } ;
struct cdns3_endpoint {int /*<<< orphan*/  pending_req_list; } ;
struct cdns3_device {TYPE_1__* regs; int /*<<< orphan*/  ep0_stage; struct cdns3_endpoint** eps; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS3_SETUP_STAGE ; 
 int EP_CMD_ERDY ; 
 int EP_CMD_REQ_CMPL ; 
 int EP_CMD_SSTALL ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*,int) ; 
 struct usb_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns3_endpoint*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct cdns3_device *priv_dev,
				     u8 send_stall, u8 send_erdy)
{
	struct cdns3_endpoint *priv_ep = priv_dev->eps[0];
	struct usb_request *request;

	request = FUNC1(&priv_ep->pending_req_list);
	if (request)
		FUNC4(&request->list);

	if (send_stall) {
		FUNC5(priv_ep, send_stall, 0);
		/* set_stall on ep0 */
		FUNC3(priv_dev, 0x00);
		FUNC6(EP_CMD_SSTALL, &priv_dev->regs->ep_cmd);
	} else {
		FUNC2(priv_dev);
	}

	priv_dev->ep0_stage = CDNS3_SETUP_STAGE;
	FUNC6((send_erdy ? EP_CMD_ERDY : 0) | EP_CMD_REQ_CMPL,
	       &priv_dev->regs->ep_cmd);

	FUNC0(priv_dev, 1);
}