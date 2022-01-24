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
struct tb_cfg_request {size_t request_size; int request_type; void const* request; int /*<<< orphan*/  copy; int /*<<< orphan*/  match; } ;
typedef  enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  response_ready ; 
 int FUNC0 (struct tb_ctl*,struct tb_cfg_request*,int /*<<< orphan*/ ,struct tb_cfg_request*) ; 
 struct tb_cfg_request* FUNC1 () ; 
 int /*<<< orphan*/  tb_xdomain_copy ; 
 int /*<<< orphan*/  tb_xdomain_match ; 

__attribute__((used)) static int FUNC2(struct tb_ctl *ctl, const void *response,
				 size_t size, enum tb_cfg_pkg_type type)
{
	struct tb_cfg_request *req;

	req = FUNC1();
	if (!req)
		return -ENOMEM;

	req->match = tb_xdomain_match;
	req->copy = tb_xdomain_copy;
	req->request = response;
	req->request_size = size;
	req->request_type = type;

	return FUNC0(ctl, req, response_ready, req);
}