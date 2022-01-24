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
struct usb_request {int /*<<< orphan*/  actual; } ;
struct cdns3_endpoint {int /*<<< orphan*/  dir; TYPE_1__* trb_pool; int /*<<< orphan*/  pending_req_list; } ;
struct cdns3_device {int /*<<< orphan*/  ep0_data_dir; struct cdns3_endpoint** eps; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_endpoint*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_request* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns3_endpoint*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct cdns3_device *priv_dev)
{
	struct cdns3_endpoint *priv_ep = priv_dev->eps[0];

	if (!FUNC5(&priv_ep->pending_req_list)) {
		struct usb_request *request;

		FUNC7(priv_ep, priv_ep->trb_pool);
		request = FUNC3(&priv_ep->pending_req_list);

		request->actual =
			FUNC0(FUNC4(priv_ep->trb_pool->length));

		priv_ep->dir = priv_dev->ep0_data_dir;
		FUNC2(priv_ep, FUNC6(request), 0);
	}

	FUNC1(priv_dev, 0, 0);
}