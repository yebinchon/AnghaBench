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
typedef  int /*<<< orphan*/  u64 ;
struct tb_ctl {int dummy; } ;
struct tb_cfg_result {int /*<<< orphan*/  err; int /*<<< orphan*/  member_0; } ;
struct tb_cfg_request {int request_size; int response_size; void* response_type; struct tb_cfg_header* response; void* request_type; struct cfg_reset_pkg* request; int /*<<< orphan*/  copy; int /*<<< orphan*/  match; } ;
struct tb_cfg_header {int dummy; } ;
struct cfg_reset_pkg {int /*<<< orphan*/  header; } ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 void* TB_CFG_PKG_RESET ; 
 int /*<<< orphan*/  tb_cfg_copy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_cfg_match ; 
 struct tb_cfg_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct tb_cfg_request*) ; 
 struct tb_cfg_result FUNC3 (struct tb_ctl*,struct tb_cfg_request*,int) ; 

struct tb_cfg_result FUNC4(struct tb_ctl *ctl, u64 route,
				  int timeout_msec)
{
	struct cfg_reset_pkg request = { .header = FUNC0(route) };
	struct tb_cfg_result res = { 0 };
	struct tb_cfg_header reply;
	struct tb_cfg_request *req;

	req = FUNC1();
	if (!req) {
		res.err = -ENOMEM;
		return res;
	}

	req->match = tb_cfg_match;
	req->copy = tb_cfg_copy;
	req->request = &request;
	req->request_size = sizeof(request);
	req->request_type = TB_CFG_PKG_RESET;
	req->response = &reply;
	req->response_size = sizeof(reply);
	req->response_type = TB_CFG_PKG_RESET;

	res = FUNC3(ctl, req, timeout_msec);

	FUNC2(req);

	return res;
}