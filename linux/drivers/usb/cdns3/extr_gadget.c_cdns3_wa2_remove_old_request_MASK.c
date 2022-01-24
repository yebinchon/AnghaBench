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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct cdns3_request {int flags; int /*<<< orphan*/  list; TYPE_1__ request; } ;
struct cdns3_endpoint {int /*<<< orphan*/  wa2_counter; int /*<<< orphan*/  endpoint; int /*<<< orphan*/  wa2_descmiss_req_list; } ;

/* Variables and functions */
 int REQUEST_INTERNAL_CH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct cdns3_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns3_endpoint*,char*) ; 

__attribute__((used)) static void FUNC6(struct cdns3_endpoint *priv_ep)
{
	struct cdns3_request *priv_req;

	while (!FUNC4(&priv_ep->wa2_descmiss_req_list)) {
		u8 chain;

		priv_req = FUNC1(&priv_ep->wa2_descmiss_req_list);
		chain = !!(priv_req->flags & REQUEST_INTERNAL_CH);

		FUNC5(priv_ep, "removes eldest request");

		FUNC2(priv_req->request.buf);
		FUNC0(&priv_ep->endpoint,
					     &priv_req->request);
		FUNC3(&priv_req->list);
		--priv_ep->wa2_counter;

		if (!chain)
			break;
	}
}