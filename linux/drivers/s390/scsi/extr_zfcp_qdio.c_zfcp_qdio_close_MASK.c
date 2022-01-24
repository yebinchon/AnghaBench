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
struct zfcp_qdio {int req_q_idx; int /*<<< orphan*/  req_q_free; int /*<<< orphan*/  req_q; int /*<<< orphan*/  req_q_wq; int /*<<< orphan*/  req_q_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  ccw_device; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  QDIO_FLAG_CLEANUP_USING_CLEAR ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int ZFCP_STATUS_ADAPTER_QDIOUP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

void FUNC8(struct zfcp_qdio *qdio)
{
	struct zfcp_adapter *adapter = qdio->adapter;
	int idx, count;

	if (!(FUNC1(&adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP))
		return;

	/* clear QDIOUP flag, thus do_QDIO is not called during qdio_shutdown */
	FUNC4(&qdio->req_q_lock);
	FUNC0(ZFCP_STATUS_ADAPTER_QDIOUP, &adapter->status);
	FUNC5(&qdio->req_q_lock);

	FUNC6(&qdio->req_q_wq);

	FUNC3(adapter->ccw_device, QDIO_FLAG_CLEANUP_USING_CLEAR);

	/* cleanup used outbound sbals */
	count = FUNC1(&qdio->req_q_free);
	if (count < QDIO_MAX_BUFFERS_PER_Q) {
		idx = (qdio->req_q_idx + count) % QDIO_MAX_BUFFERS_PER_Q;
		count = QDIO_MAX_BUFFERS_PER_Q - count;
		FUNC7(qdio->req_q, idx, count);
	}
	qdio->req_q_idx = 0;
	FUNC2(&qdio->req_q_free, 0);
}