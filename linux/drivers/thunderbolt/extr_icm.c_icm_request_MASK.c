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
struct tb_cfg_result {int err; } ;
struct tb_cfg_request {size_t request_size; size_t npackets; size_t response_size; int /*<<< orphan*/  response_type; void* response; int /*<<< orphan*/  request_type; void const* request; int /*<<< orphan*/  copy; int /*<<< orphan*/  match; } ;
struct tb {int /*<<< orphan*/  ctl; } ;
struct icm {int /*<<< orphan*/  request_lock; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  TB_CFG_PKG_ICM_CMD ; 
 int /*<<< orphan*/  TB_CFG_PKG_ICM_RESP ; 
 int /*<<< orphan*/  icm_copy ; 
 int /*<<< orphan*/  icm_match ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tb_cfg_request* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tb_cfg_request*) ; 
 struct tb_cfg_result FUNC4 (int /*<<< orphan*/ ,struct tb_cfg_request*,unsigned int) ; 
 struct icm* FUNC5 (struct tb*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct tb *tb, const void *request, size_t request_size,
		       void *response, size_t response_size, size_t npackets,
		       unsigned int timeout_msec)
{
	struct icm *icm = FUNC5(tb);
	int retries = 3;

	do {
		struct tb_cfg_request *req;
		struct tb_cfg_result res;

		req = FUNC2();
		if (!req)
			return -ENOMEM;

		req->match = icm_match;
		req->copy = icm_copy;
		req->request = request;
		req->request_size = request_size;
		req->request_type = TB_CFG_PKG_ICM_CMD;
		req->response = response;
		req->npackets = npackets;
		req->response_size = response_size;
		req->response_type = TB_CFG_PKG_ICM_RESP;

		FUNC0(&icm->request_lock);
		res = FUNC4(tb->ctl, req, timeout_msec);
		FUNC1(&icm->request_lock);

		FUNC3(req);

		if (res.err != -ETIMEDOUT)
			return res.err == 1 ? -EIO : res.err;

		FUNC6(20, 50);
	} while (retries--);

	return -ETIMEDOUT;
}