#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  req_id; struct zfcp_erp_action* erp_action; int /*<<< orphan*/  handler; int /*<<< orphan*/  qdio_req; int /*<<< orphan*/  status; } ;
struct zfcp_erp_action {int /*<<< orphan*/  fsf_req_id; TYPE_1__* adapter; } ;
struct TYPE_5__ {int /*<<< orphan*/  erp_req; } ;
struct TYPE_6__ {int adapter_features; TYPE_2__ pool; } ;
struct TYPE_4__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int FSF_FEATURE_HBAAPI_MANAGEMENT ; 
 int /*<<< orphan*/  FSF_QTCB_EXCHANGE_PORT_DATA ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fsf_exchange_port_data_handler ; 
 struct zfcp_fsf_req* FUNC4 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_fsf_req*) ; 
 int FUNC6 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC8 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC10(struct zfcp_erp_action *erp_action)
{
	struct zfcp_qdio *qdio = erp_action->adapter->qdio;
	struct zfcp_fsf_req *req;
	int retval = -EIO;

	if (!(qdio->adapter->adapter_features & FSF_FEATURE_HBAAPI_MANAGEMENT))
		return -EOPNOTSUPP;

	FUNC2(&qdio->req_q_lock);
	if (FUNC8(qdio))
		goto out;

	req = FUNC4(qdio, FSF_QTCB_EXCHANGE_PORT_DATA,
				  SBAL_SFLAGS0_TYPE_READ,
				  qdio->adapter->pool.erp_req);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	FUNC9(qdio, &req->qdio_req);

	req->handler = zfcp_fsf_exchange_port_data_handler;
	req->erp_action = erp_action;
	erp_action->fsf_req_id = req->req_id;

	FUNC7(req);
	retval = FUNC6(req);
	if (retval) {
		FUNC5(req);
		erp_action->fsf_req_id = 0;
	}
	/* NOTE: DO NOT TOUCH req PAST THIS POINT! */
out:
	FUNC3(&qdio->req_q_lock);
	return retval;
}