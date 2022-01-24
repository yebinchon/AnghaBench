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
struct zfcp_qdio {int /*<<< orphan*/  req_q_free; } ;
struct TYPE_2__ {int /*<<< orphan*/  qdio_outb_usage; } ;
struct zfcp_fsf_req {int req_id; int /*<<< orphan*/  timer; TYPE_1__ qdio_req; int /*<<< orphan*/  issued; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  req_no; int /*<<< orphan*/  fsf_req_seq_no; int /*<<< orphan*/  req_list; struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC5 (struct zfcp_qdio*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct zfcp_fsf_req *req)
{
	const bool is_srb = FUNC4(req);
	struct zfcp_adapter *adapter = req->adapter;
	struct zfcp_qdio *qdio = adapter->qdio;
	int req_id = req->req_id;

	FUNC6(adapter->req_list, req);

	req->qdio_req.qdio_outb_usage = FUNC0(&qdio->req_q_free);
	req->issued = FUNC2();
	if (FUNC5(qdio, &req->qdio_req)) {
		FUNC1(&req->timer);
		/* lookup request again, list might have changed */
		FUNC7(adapter->req_list, req_id);
		FUNC3(adapter, 0, "fsrs__1");
		return -EIO;
	}

	/*
	 * NOTE: DO NOT TOUCH ASYNC req PAST THIS POINT.
	 *	 ONLY TOUCH SYNC req AGAIN ON req->completion.
	 *
	 * The request might complete and be freed concurrently at any point
	 * now. This is not protected by the QDIO-lock (req_q_lock). So any
	 * uncontrolled access after this might result in an use-after-free bug.
	 * Only if the request doesn't have ZFCP_STATUS_FSFREQ_CLEANUP set, and
	 * when it is completed via req->completion, is it safe to use req
	 * again.
	 */

	/* Don't increase for unsolicited status */
	if (!is_srb)
		adapter->fsf_req_seq_no++;
	adapter->req_no++;

	return 0;
}