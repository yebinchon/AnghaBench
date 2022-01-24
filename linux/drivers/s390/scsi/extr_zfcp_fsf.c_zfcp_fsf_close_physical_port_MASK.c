#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  req_id; int /*<<< orphan*/  handler; struct zfcp_erp_action* erp_action; TYPE_5__* qtcb; TYPE_6__* data; int /*<<< orphan*/  qdio_req; int /*<<< orphan*/  status; } ;
struct zfcp_erp_action {int /*<<< orphan*/  fsf_req_id; TYPE_6__* port; TYPE_1__* adapter; } ;
struct TYPE_12__ {int /*<<< orphan*/  handle; } ;
struct TYPE_10__ {int /*<<< orphan*/  port_handle; } ;
struct TYPE_11__ {TYPE_4__ header; } ;
struct TYPE_8__ {int /*<<< orphan*/  erp_req; } ;
struct TYPE_9__ {TYPE_2__ pool; } ;
struct TYPE_7__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FSF_QTCB_CLOSE_PHYSICAL_PORT ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fsf_close_physical_port_handler ; 
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

	FUNC2(&qdio->req_q_lock);
	if (FUNC8(qdio))
		goto out;

	req = FUNC4(qdio, FSF_QTCB_CLOSE_PHYSICAL_PORT,
				  SBAL_SFLAGS0_TYPE_READ,
				  qdio->adapter->pool.erp_req);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	FUNC9(qdio, &req->qdio_req);

	req->data = erp_action->port;
	req->qtcb->header.port_handle = erp_action->port->handle;
	req->erp_action = erp_action;
	req->handler = zfcp_fsf_close_physical_port_handler;
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