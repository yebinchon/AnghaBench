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
struct zfcp_fsf_req {unsigned long req_id; struct zfcp_fc_wka_port* data; TYPE_6__* qtcb; int /*<<< orphan*/  handler; int /*<<< orphan*/  qdio_req; int /*<<< orphan*/  status; } ;
struct zfcp_fc_wka_port {int /*<<< orphan*/  d_id; TYPE_1__* adapter; } ;
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
 int /*<<< orphan*/  ZFCP_FSF_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct zfcp_fc_wka_port*,unsigned long) ; 
 int /*<<< orphan*/  zfcp_fsf_open_wka_port_handler ; 
 struct zfcp_fsf_req* FUNC6 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 int FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC12(struct zfcp_fc_wka_port *wka_port)
{
	struct zfcp_qdio *qdio = wka_port->adapter->qdio;
	struct zfcp_fsf_req *req;
	unsigned long req_id = 0;
	int retval = -EIO;

	FUNC3(&qdio->req_q_lock);
	if (FUNC10(qdio))
		goto out;

	req = FUNC6(qdio, FSF_QTCB_OPEN_PORT_WITH_DID,
				  SBAL_SFLAGS0_TYPE_READ,
				  qdio->adapter->pool.erp_req);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	FUNC11(qdio, &req->qdio_req);

	req->handler = zfcp_fsf_open_wka_port_handler;
	FUNC2(req->qtcb->bottom.support.d_id, wka_port->d_id);
	req->data = wka_port;

	req_id = req->req_id;

	FUNC9(req, ZFCP_FSF_REQUEST_TIMEOUT);
	retval = FUNC8(req);
	if (retval)
		FUNC7(req);
	/* NOTE: DO NOT TOUCH req PAST THIS POINT! */
out:
	FUNC4(&qdio->req_q_lock);
	if (!retval)
		FUNC5("fsowp_1", wka_port, req_id);
	return retval;
}