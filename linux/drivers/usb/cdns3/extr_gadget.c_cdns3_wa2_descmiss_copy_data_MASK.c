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
typedef  int /*<<< orphan*/  u8 ;
struct usb_request {int actual; int length; scalar_t__ buf; int /*<<< orphan*/  status; } ;
struct cdns3_request {int flags; int /*<<< orphan*/  list; struct usb_request request; } ;
struct cdns3_endpoint {int /*<<< orphan*/  wa2_counter; int /*<<< orphan*/  endpoint; int /*<<< orphan*/  wa2_descmiss_req_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int REQUEST_INTERNAL_CH ; 
 int REQUEST_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_request*) ; 
 struct cdns3_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 

__attribute__((used)) static void FUNC6(struct cdns3_endpoint *priv_ep,
					 struct usb_request *request)
{
	struct usb_request *descmiss_req;
	struct cdns3_request *descmiss_priv_req;

	while (!FUNC4(&priv_ep->wa2_descmiss_req_list)) {
		int chunk_end;
		int length;

		descmiss_priv_req =
			FUNC1(&priv_ep->wa2_descmiss_req_list);
		descmiss_req = &descmiss_priv_req->request;

		/* driver can't touch pending request */
		if (descmiss_priv_req->flags & REQUEST_PENDING)
			break;

		chunk_end = descmiss_priv_req->flags & REQUEST_INTERNAL_CH;
		length = request->actual + descmiss_req->actual;

		request->status = descmiss_req->status;

		if (length <= request->length) {
			FUNC5(&((u8 *)request->buf)[request->actual],
			       descmiss_req->buf,
			       descmiss_req->actual);
			request->actual = length;
		} else {
			/* It should never occures */
			request->status = -ENOMEM;
		}

		FUNC3(&descmiss_priv_req->list);

		FUNC2(descmiss_req->buf);
		FUNC0(&priv_ep->endpoint, descmiss_req);
		--priv_ep->wa2_counter;

		if (!chunk_end)
			break;
	}
}