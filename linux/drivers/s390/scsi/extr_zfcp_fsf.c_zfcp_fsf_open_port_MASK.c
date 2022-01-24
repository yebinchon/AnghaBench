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
struct zfcp_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  d_id; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  req_id; struct zfcp_erp_action* erp_action; struct zfcp_port* data; TYPE_6__* qtcb; int /*<<< orphan*/  handler; int /*<<< orphan*/  qdio_req; int /*<<< orphan*/  status; } ;
struct zfcp_erp_action {int /*<<< orphan*/  fsf_req_id; struct zfcp_port* port; TYPE_1__* adapter; } ;
struct TYPE_10__ {int /*<<< orphan*/  d_id; } ;
struct TYPE_11__ {TYPE_4__ support; } ;
struct TYPE_12__ {TYPE_5__ bottom; } ;
struct TYPE_8__ {int /*<<< orphan*/  erp_req; } ;
struct TYPE_9__ {TYPE_2__ pool; } ;
struct TYPE_7__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FSF_QTCB_OPEN_PORT_WITH_DID ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fsf_open_port_handler ; 
 struct zfcp_fsf_req* FUNC7 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 int FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC11 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC13(struct zfcp_erp_action *erp_action)
{
	struct zfcp_qdio *qdio = erp_action->adapter->qdio;
	struct zfcp_port *port = erp_action->port;
	struct zfcp_fsf_req *req;
	int retval = -EIO;

	FUNC5(&qdio->req_q_lock);
	if (FUNC11(qdio))
		goto out;

	req = FUNC7(qdio, FSF_QTCB_OPEN_PORT_WITH_DID,
				  SBAL_SFLAGS0_TYPE_READ,
				  qdio->adapter->pool.erp_req);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	FUNC12(qdio, &req->qdio_req);

	req->handler = zfcp_fsf_open_port_handler;
	FUNC3(req->qtcb->bottom.support.d_id, port->d_id);
	req->data = port;
	req->erp_action = erp_action;
	erp_action->fsf_req_id = req->req_id;
	FUNC2(&port->dev);

	FUNC10(req);
	retval = FUNC9(req);
	if (retval) {
		FUNC8(req);
		erp_action->fsf_req_id = 0;
		FUNC4(&port->dev);
	}
	/* NOTE: DO NOT TOUCH req PAST THIS POINT! */
out:
	FUNC6(&qdio->req_q_lock);
	return retval;
}