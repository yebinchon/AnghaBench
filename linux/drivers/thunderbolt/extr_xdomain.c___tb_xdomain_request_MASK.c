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
struct tb_cfg_result {int err; } ;
struct tb_cfg_request {size_t request_size; int request_type; size_t response_size; int response_type; void* response; void const* request; int /*<<< orphan*/  copy; int /*<<< orphan*/  match; } ;
typedef  enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 struct tb_cfg_request* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tb_cfg_request*) ; 
 struct tb_cfg_result FUNC2 (struct tb_ctl*,struct tb_cfg_request*,unsigned int) ; 
 int /*<<< orphan*/  tb_xdomain_copy ; 
 int /*<<< orphan*/  tb_xdomain_match ; 

__attribute__((used)) static int FUNC3(struct tb_ctl *ctl, const void *request,
	size_t request_size, enum tb_cfg_pkg_type request_type, void *response,
	size_t response_size, enum tb_cfg_pkg_type response_type,
	unsigned int timeout_msec)
{
	struct tb_cfg_request *req;
	struct tb_cfg_result res;

	req = FUNC0();
	if (!req)
		return -ENOMEM;

	req->match = tb_xdomain_match;
	req->copy = tb_xdomain_copy;
	req->request = request;
	req->request_size = request_size;
	req->request_type = request_type;
	req->response = response;
	req->response_size = response_size;
	req->response_type = response_type;

	res = FUNC2(ctl, req, timeout_msec);

	FUNC1(req);

	return res.err == 1 ? -EIO : res.err;
}