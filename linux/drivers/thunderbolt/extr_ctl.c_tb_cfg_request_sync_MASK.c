#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tb_ctl {int dummy; } ;
struct tb_cfg_result {int err; int /*<<< orphan*/  member_0; } ;
struct tb_cfg_request {struct tb_cfg_result result; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (struct tb_ctl*,struct tb_cfg_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_cfg_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_cfg_request_complete ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

struct tb_cfg_result FUNC6(struct tb_ctl *ctl,
					 struct tb_cfg_request *req,
					 int timeout_msec)
{
	unsigned long timeout = FUNC2(timeout_msec);
	struct tb_cfg_result res = { 0 };
	FUNC0(done);
	int ret;

	ret = FUNC3(ctl, req, tb_cfg_request_complete, &done);
	if (ret) {
		res.err = ret;
		return res;
	}

	if (!FUNC5(&done, timeout))
		FUNC4(req, -ETIMEDOUT);

	FUNC1(&req->work);

	return req->result;
}