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
struct tb_ctl {int /*<<< orphan*/  request_queue_lock; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  running; } ;
struct tb_cfg_request {int /*<<< orphan*/  flags; int /*<<< orphan*/  list; struct tb_ctl* ctl; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  TB_CFG_REQUEST_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct tb_ctl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tb_ctl* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct tb_ctl *ctl,
				  struct tb_cfg_request *req)
{
	FUNC0(FUNC5(TB_CFG_REQUEST_ACTIVE, &req->flags));
	FUNC0(req->ctl);

	FUNC2(&ctl->request_queue_lock);
	if (!ctl->running) {
		FUNC3(&ctl->request_queue_lock);
		return -ENOTCONN;
	}
	req->ctl = ctl;
	FUNC1(&req->list, &ctl->request_queue);
	FUNC4(TB_CFG_REQUEST_ACTIVE, &req->flags);
	FUNC3(&ctl->request_queue_lock);
	return 0;
}