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
struct TYPE_3__ {int /*<<< orphan*/  req; } ;
struct TYPE_4__ {TYPE_1__ gpn_ft; } ;
struct zfcp_fc_req {TYPE_2__ u; int /*<<< orphan*/  sg_req; int /*<<< orphan*/  sg_rsp; } ;
struct zfcp_fc_gpn_ft_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct zfcp_fc_req*) ; 
 struct zfcp_fc_req* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zfcp_fc_req_cache ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct zfcp_fc_req *FUNC4(int buf_num)
{
	struct zfcp_fc_req *fc_req;

	fc_req = FUNC1(zfcp_fc_req_cache, GFP_KERNEL);
	if (!fc_req)
		return NULL;

	if (FUNC3(&fc_req->sg_rsp, buf_num)) {
		FUNC0(zfcp_fc_req_cache, fc_req);
		return NULL;
	}

	FUNC2(&fc_req->sg_req, &fc_req->u.gpn_ft.req,
		    sizeof(struct zfcp_fc_gpn_ft_req));

	return fc_req;
}