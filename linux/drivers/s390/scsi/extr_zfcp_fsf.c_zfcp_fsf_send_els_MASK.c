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
typedef  int /*<<< orphan*/  u32 ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; } ;
struct zfcp_fsf_req {struct zfcp_fsf_ct_els* data; int /*<<< orphan*/  handler; TYPE_3__* qtcb; int /*<<< orphan*/  qdio_req; int /*<<< orphan*/  status; } ;
struct zfcp_fsf_ct_els {int /*<<< orphan*/  d_id; int /*<<< orphan*/  resp; int /*<<< orphan*/  req; } ;
struct zfcp_adapter {struct zfcp_qdio* qdio; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_id; } ;
struct TYPE_5__ {TYPE_1__ support; } ;
struct TYPE_6__ {TYPE_2__ bottom; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FSF_QTCB_SEND_ELS ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_WRITE_READ ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 struct zfcp_fsf_req* FUNC7 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 int FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  zfcp_fsf_send_els_handler ; 
 int FUNC10 (struct zfcp_fsf_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC11 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_qdio*,int /*<<< orphan*/ *,int) ; 

int FUNC13(struct zfcp_adapter *adapter, u32 d_id,
		      struct zfcp_fsf_ct_els *els, unsigned int timeout)
{
	struct zfcp_fsf_req *req;
	struct zfcp_qdio *qdio = adapter->qdio;
	int ret = -EIO;

	FUNC3(&qdio->req_q_lock);
	if (FUNC11(qdio))
		goto out;

	req = FUNC7(qdio, FSF_QTCB_SEND_ELS,
				  SBAL_SFLAGS0_TYPE_WRITE_READ, NULL);

	if (FUNC0(req)) {
		ret = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;

	if (!FUNC5(adapter))
		FUNC12(qdio, &req->qdio_req, 2);

	ret = FUNC10(req, els->req, els->resp, timeout);

	if (ret)
		goto failed_send;

	FUNC2(req->qtcb->bottom.support.d_id, d_id);
	req->handler = zfcp_fsf_send_els_handler;
	els->d_id = d_id;
	req->data = els;

	FUNC6("fssels1", req, d_id);

	ret = FUNC9(req);
	if (ret)
		goto failed_send;
	/* NOTE: DO NOT TOUCH req PAST THIS POINT! */

	goto out;

failed_send:
	FUNC8(req);
out:
	FUNC4(&qdio->req_q_lock);
	return ret;
}