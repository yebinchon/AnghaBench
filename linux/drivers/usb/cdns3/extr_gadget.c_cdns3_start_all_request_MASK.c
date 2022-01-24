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
struct usb_request {int /*<<< orphan*/  list; } ;
struct cdns3_endpoint {int /*<<< orphan*/  flags; int /*<<< orphan*/  pending_req_list; int /*<<< orphan*/  deferred_req_list; } ;
struct cdns3_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_RING_FULL ; 
 int FUNC0 (struct cdns3_endpoint*,struct usb_request*) ; 
 struct usb_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cdns3_device *priv_dev,
				   struct cdns3_endpoint *priv_ep)
{
	struct usb_request *request;
	int ret = 0;

	while (!FUNC4(&priv_ep->deferred_req_list)) {
		request = FUNC1(&priv_ep->deferred_req_list);

		ret = FUNC0(priv_ep, request);
		if (ret)
			return ret;

		FUNC3(&request->list);
		FUNC2(&request->list,
			      &priv_ep->pending_req_list);
	}

	priv_ep->flags &= ~EP_RING_FULL;
	return ret;
}