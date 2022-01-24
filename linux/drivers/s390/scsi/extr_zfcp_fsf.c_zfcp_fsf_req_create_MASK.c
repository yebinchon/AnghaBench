#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct zfcp_qdio {struct zfcp_adapter* adapter; } ;
struct zfcp_fsf_req {scalar_t__ req_id; TYPE_4__* qtcb; int /*<<< orphan*/  qdio_req; struct zfcp_adapter* adapter; int /*<<< orphan*/  completion; int /*<<< orphan*/  timer; int /*<<< orphan*/  list; } ;
struct TYPE_5__ {int /*<<< orphan*/ * qtcb_pool; } ;
struct zfcp_adapter {scalar_t__ req_no; int /*<<< orphan*/  qdio; int /*<<< orphan*/  fsf_req_seq_no; TYPE_1__ pool; } ;
struct fsf_qtcb {int dummy; } ;
typedef  int /*<<< orphan*/  mempool_t ;
struct TYPE_7__ {scalar_t__ req_handle; size_t fsf_command; } ;
struct TYPE_6__ {scalar_t__ req_id; int ulp_info; int /*<<< orphan*/  qtcb_version; int /*<<< orphan*/  qtcb_type; int /*<<< orphan*/  req_seq_no; } ;
struct TYPE_8__ {TYPE_3__ header; TYPE_2__ prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct zfcp_fsf_req* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSF_QTCB_CURRENT_VERSION ; 
 size_t FSF_QTCB_UNSOLICITED_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fsf_qtcb_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct zfcp_fsf_req* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,int) ; 

__attribute__((used)) static struct zfcp_fsf_req *FUNC10(struct zfcp_qdio *qdio,
						u32 fsf_cmd, u8 sbtype,
						mempool_t *pool)
{
	struct zfcp_adapter *adapter = qdio->adapter;
	struct zfcp_fsf_req *req = FUNC6(pool);

	if (FUNC5(!req))
		return FUNC0(-ENOMEM);

	if (adapter->req_no == 0)
		adapter->req_no++;

	FUNC1(&req->list);
	FUNC4(&req->timer, NULL, 0);
	FUNC2(&req->completion);

	req->adapter = adapter;
	req->req_id = adapter->req_no;

	if (FUNC3(fsf_cmd != FSF_QTCB_UNSOLICITED_STATUS)) {
		if (FUNC3(*pool))
			req->qtcb = FUNC7(
				adapter->pool.qtcb_pool);
		else
			req->qtcb = FUNC7(NULL);

		if (FUNC5(!req->qtcb)) {
			FUNC8(req);
			return FUNC0(-ENOMEM);
		}

		req->qtcb->prefix.req_seq_no = adapter->fsf_req_seq_no;
		req->qtcb->prefix.req_id = req->req_id;
		req->qtcb->prefix.ulp_info = 26;
		req->qtcb->prefix.qtcb_type = fsf_qtcb_type[fsf_cmd];
		req->qtcb->prefix.qtcb_version = FSF_QTCB_CURRENT_VERSION;
		req->qtcb->header.req_handle = req->req_id;
		req->qtcb->header.fsf_command = fsf_cmd;
	}

	FUNC9(adapter->qdio, &req->qdio_req, req->req_id, sbtype,
			   req->qtcb, sizeof(struct fsf_qtcb));

	return req;
}