#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct zfcp_qdio {int dummy; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  qdio_req; struct fsf_qtcb* qtcb; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int adapter_features; struct zfcp_qdio* qdio; } ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {void* resp_buf_length; void* req_buf_length; } ;
struct TYPE_4__ {TYPE_1__ support; } ;
struct fsf_qtcb {TYPE_2__ bottom; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int FSF_FEATURE_ELS_CT_CHAINED_SBALS ; 
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 scalar_t__ FUNC1 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_qdio*,int /*<<< orphan*/ *,struct scatterlist*,struct scatterlist*) ; 
 void* FUNC3 (struct scatterlist*) ; 
 scalar_t__ FUNC4 (struct zfcp_qdio*,int /*<<< orphan*/ *,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_qdio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct zfcp_fsf_req *req,
				       struct scatterlist *sg_req,
				       struct scatterlist *sg_resp)
{
	struct zfcp_adapter *adapter = req->adapter;
	struct zfcp_qdio *qdio = adapter->qdio;
	struct fsf_qtcb *qtcb = req->qtcb;
	u32 feat = adapter->adapter_features;

	if (FUNC1(adapter)) {
		if (FUNC4(qdio, &req->qdio_req, sg_req))
			return -EIO;
		qtcb->bottom.support.req_buf_length =
			FUNC3(sg_req);
		if (FUNC4(qdio, &req->qdio_req, sg_resp))
			return -EIO;
		qtcb->bottom.support.resp_buf_length =
			FUNC3(sg_resp);

		FUNC5(qdio, &req->qdio_req, FUNC0(sg_req));
		FUNC6(qdio, &req->qdio_req);
		FUNC7(qdio, &req->qdio_req);
		return 0;
	}

	/* use single, unchained SBAL if it can hold the request */
	if (FUNC8(sg_req) && FUNC8(sg_resp)) {
		FUNC2(qdio, &req->qdio_req,
						sg_req, sg_resp);
		return 0;
	}

	if (!(feat & FSF_FEATURE_ELS_CT_CHAINED_SBALS))
		return -EOPNOTSUPP;

	if (FUNC4(qdio, &req->qdio_req, sg_req))
		return -EIO;

	qtcb->bottom.support.req_buf_length = FUNC3(sg_req);

	FUNC6(qdio, &req->qdio_req);
	FUNC9(qdio, &req->qdio_req);

	if (FUNC4(qdio, &req->qdio_req, sg_resp))
		return -EIO;

	qtcb->bottom.support.resp_buf_length = FUNC3(sg_resp);

	FUNC6(qdio, &req->qdio_req);

	return 0;
}