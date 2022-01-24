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
struct tb_cfg_result {int /*<<< orphan*/  err; } ;
struct tb_cfg_request {struct tb_cfg_result result; int /*<<< orphan*/  response_size; int /*<<< orphan*/  response; int /*<<< orphan*/  request; int /*<<< orphan*/  response_type; } ;
struct ctl_pkg {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tb_cfg_result FUNC1 (struct ctl_pkg const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct tb_cfg_request *req, const struct ctl_pkg *pkg)
{
	struct tb_cfg_result res;

	/* Now make sure it is in expected format */
	res = FUNC1(pkg, req->response_size, req->response_type,
			   FUNC2(req->request));
	if (!res.err)
		FUNC0(req->response, pkg->buffer, req->response_size);

	req->result = res;

	/* Always complete when first response is received */
	return true;
}