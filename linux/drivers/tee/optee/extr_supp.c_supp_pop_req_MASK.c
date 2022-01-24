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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int a; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
struct tee_param {scalar_t__ const attr; TYPE_2__ u; } ;
struct optee_supp_req {size_t num_params; } ;
struct optee_supp {int req_id; int /*<<< orphan*/  idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct optee_supp_req* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEE_IOCTL_PARAM_ATTR_META ; 
 scalar_t__ TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT ; 
 struct optee_supp_req* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct optee_supp_req *FUNC3(struct optee_supp *supp,
					   size_t num_params,
					   struct tee_param *param,
					   size_t *num_meta)
{
	struct optee_supp_req *req;
	int id;
	size_t nm;
	const u32 attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT |
			 TEE_IOCTL_PARAM_ATTR_META;

	if (!num_params)
		return FUNC0(-EINVAL);

	if (supp->req_id == -1) {
		if (param->attr != attr)
			return FUNC0(-EINVAL);
		id = param->u.value.a;
		nm = 1;
	} else {
		id = supp->req_id;
		nm = 0;
	}

	req = FUNC1(&supp->idr, id);
	if (!req)
		return FUNC0(-ENOENT);

	if ((num_params - nm) != req->num_params)
		return FUNC0(-EINVAL);

	FUNC2(&supp->idr, id);
	supp->req_id = -1;
	*num_meta = nm;

	return req;
}