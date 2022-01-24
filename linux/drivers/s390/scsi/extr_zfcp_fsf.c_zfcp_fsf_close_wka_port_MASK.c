#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {unsigned long req_id; TYPE_5__* qtcb; struct zfcp_fc_wka_port* data; int /*<<< orphan*/  handler; int /*<<< orphan*/  qdio_req; int /*<<< orphan*/  status; } ;
struct zfcp_fc_wka_port {int /*<<< orphan*/  handle; TYPE_1__* adapter; } ;
struct TYPE_9__ {int /*<<< orphan*/  port_handle; } ;
struct TYPE_10__ {TYPE_4__ header; } ;
struct TYPE_7__ {int /*<<< orphan*/  erp_req; } ;
struct TYPE_8__ {TYPE_2__ pool; } ;
struct TYPE_6__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FSF_QTCB_CLOSE_PORT ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_FSF_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct zfcp_fc_wka_port*,unsigned long) ; 
 int /*<<< orphan*/  zfcp_fsf_close_wka_port_handler ; 
 struct zfcp_fsf_req* FUNC5 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_fsf_req*) ; 
 int FUNC7 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC11(struct zfcp_fc_wka_port *wka_port)
{
	struct zfcp_qdio *qdio = wka_port->adapter->qdio;
	struct zfcp_fsf_req *req;
	unsigned long req_id = 0;
	int retval = -EIO;

	FUNC2(&qdio->req_q_lock);
	if (FUNC9(qdio))
		goto out;

	req = FUNC5(qdio, FSF_QTCB_CLOSE_PORT,
				  SBAL_SFLAGS0_TYPE_READ,
				  qdio->adapter->pool.erp_req);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	FUNC10(qdio, &req->qdio_req);

	req->handler = zfcp_fsf_close_wka_port_handler;
	req->data = wka_port;
	req->qtcb->header.port_handle = wka_port->handle;

	req_id = req->req_id;

	FUNC8(req, ZFCP_FSF_REQUEST_TIMEOUT);
	retval = FUNC7(req);
	if (retval)
		FUNC6(req);
	/* NOTE: DO NOT TOUCH req PAST THIS POINT! */
out:
	FUNC3(&qdio->req_q_lock);
	if (!retval)
		FUNC4("fscwp_1", wka_port, req_id);
	return retval;
}