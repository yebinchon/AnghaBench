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
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_1__* adapter; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  completion; int /*<<< orphan*/  handler; int /*<<< orphan*/  qdio_req; struct fsf_qtcb_bottom_port* data; } ;
struct fsf_qtcb_bottom_port {int dummy; } ;
struct TYPE_2__ {int adapter_features; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int FSF_FEATURE_HBAAPI_MANAGEMENT ; 
 int /*<<< orphan*/  FSF_QTCB_EXCHANGE_PORT_DATA ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_FSF_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fsf_exchange_port_data_handler ; 
 struct zfcp_fsf_req* FUNC5 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_fsf_req*) ; 
 int FUNC7 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC11(struct zfcp_qdio *qdio,
				     struct fsf_qtcb_bottom_port *data)
{
	struct zfcp_fsf_req *req = NULL;
	int retval = -EIO;

	if (!(qdio->adapter->adapter_features & FSF_FEATURE_HBAAPI_MANAGEMENT))
		return -EOPNOTSUPP;

	FUNC2(&qdio->req_q_lock);
	if (FUNC9(qdio))
		goto out_unlock;

	req = FUNC5(qdio, FSF_QTCB_EXCHANGE_PORT_DATA,
				  SBAL_SFLAGS0_TYPE_READ, NULL);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out_unlock;
	}

	if (data)
		req->data = data;

	FUNC10(qdio, &req->qdio_req);

	req->handler = zfcp_fsf_exchange_port_data_handler;
	FUNC8(req, ZFCP_FSF_REQUEST_TIMEOUT);
	retval = FUNC7(req);
	FUNC3(&qdio->req_q_lock);

	if (!retval) {
		/* NOTE: ONLY TOUCH SYNC req AGAIN ON req->completion. */
		FUNC4(&req->completion);
	}

	FUNC6(req);

	return retval;

out_unlock:
	FUNC3(&qdio->req_q_lock);
	return retval;
}