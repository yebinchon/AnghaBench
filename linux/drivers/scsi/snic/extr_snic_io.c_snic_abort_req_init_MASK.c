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
typedef  scalar_t__ ulong ;
struct snic_req_info {struct snic_host_req* abort_req; } ;
struct TYPE_2__ {scalar_t__ init_ctx; } ;
struct snic_host_req {TYPE_1__ hdr; } ;
struct snic {int /*<<< orphan*/  shost; int /*<<< orphan*/ * req_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t SNIC_REQ_TM_CACHE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct snic_host_req* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snic_host_req*,int /*<<< orphan*/ ,int) ; 

struct snic_host_req *
FUNC5(struct snic *snic, struct snic_req_info *rqi)
{
	struct snic_host_req *req = NULL;

	FUNC0(!rqi);

	/* If abort to be issued second time, then reuse */
	if (rqi->abort_req)
		return rqi->abort_req;


	req = FUNC3(snic->req_pool[SNIC_REQ_TM_CACHE], GFP_ATOMIC);
	if (!req) {
		FUNC1(snic->shost, "abts:Failed to alloc tm req.\n");
		FUNC2(1);

		return NULL;
	}

	rqi->abort_req = req;
	FUNC4(req, 0, sizeof(struct snic_host_req));
	/* pre initialization of init_ctx to support req_to_rqi */
	req->hdr.init_ctx = (ulong) rqi;

	return req;
}