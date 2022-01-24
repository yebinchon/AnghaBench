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
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_fsf_req {struct fsf_status_read_buffer* data; int /*<<< orphan*/  qdio_req; } ;
struct TYPE_2__ {int /*<<< orphan*/  sr_data; int /*<<< orphan*/  status_read_req; } ;
struct zfcp_adapter {TYPE_1__ pool; } ;
struct page {int dummy; } ;
struct fsf_status_read_buffer {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSF_QTCB_UNSOLICITED_STATUS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_STATUS ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsf_status_read_buffer*,int /*<<< orphan*/ ,int) ; 
 struct fsf_status_read_buffer* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fsf_status_read_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct zfcp_fsf_req*) ; 
 struct zfcp_fsf_req* FUNC10 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_fsf_req*) ; 
 int FUNC12 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct zfcp_qdio*,int /*<<< orphan*/ *,struct fsf_status_read_buffer*,int) ; 
 scalar_t__ FUNC14 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC15 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC16(struct zfcp_qdio *qdio)
{
	struct zfcp_adapter *adapter = qdio->adapter;
	struct zfcp_fsf_req *req;
	struct fsf_status_read_buffer *sr_buf;
	struct page *page;
	int retval = -EIO;

	FUNC6(&qdio->req_q_lock);
	if (FUNC14(qdio))
		goto out;

	req = FUNC10(qdio, FSF_QTCB_UNSOLICITED_STATUS,
				  SBAL_SFLAGS0_TYPE_STATUS,
				  adapter->pool.status_read_req);
	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	page = FUNC2(adapter->pool.sr_data, GFP_ATOMIC);
	if (!page) {
		retval = -ENOMEM;
		goto failed_buf;
	}
	sr_buf = FUNC5(page);
	FUNC4(sr_buf, 0, sizeof(*sr_buf));
	req->data = sr_buf;

	FUNC13(qdio, &req->qdio_req, sr_buf, sizeof(*sr_buf));
	FUNC15(qdio, &req->qdio_req);

	retval = FUNC12(req);
	if (retval)
		goto failed_req_send;
	/* NOTE: DO NOT TOUCH req PAST THIS POINT! */

	goto out;

failed_req_send:
	req->data = NULL;
	FUNC3(FUNC8(sr_buf), adapter->pool.sr_data);
failed_buf:
	FUNC9("fssr__1", req);
	FUNC11(req);
out:
	FUNC7(&qdio->req_q_lock);
	return retval;
}