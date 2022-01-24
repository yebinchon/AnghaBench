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
struct tb_cfg_request {void (* callback ) (void*) ;int /*<<< orphan*/  work; int /*<<< orphan*/  response; int /*<<< orphan*/  request_type; int /*<<< orphan*/  request_size; int /*<<< orphan*/  request; int /*<<< orphan*/  list; void* callback_data; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_cfg_request*) ; 
 int FUNC4 (struct tb_ctl*,struct tb_cfg_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_cfg_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_cfg_request*) ; 
 int /*<<< orphan*/  tb_cfg_request_work ; 
 int FUNC7 (struct tb_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct tb_ctl *ctl, struct tb_cfg_request *req,
		   void (*callback)(void *), void *callback_data)
{
	int ret;

	req->flags = 0;
	req->callback = callback;
	req->callback_data = callback_data;
	FUNC1(&req->work, tb_cfg_request_work);
	FUNC0(&req->list);

	FUNC5(req);
	ret = FUNC4(ctl, req);
	if (ret)
		goto err_put;

	ret = FUNC7(ctl, req->request, req->request_size,
			req->request_type);
	if (ret)
		goto err_dequeue;

	if (!req->response)
		FUNC2(&req->work);

	return 0;

err_dequeue:
	FUNC3(req);
err_put:
	FUNC6(req);

	return ret;
}