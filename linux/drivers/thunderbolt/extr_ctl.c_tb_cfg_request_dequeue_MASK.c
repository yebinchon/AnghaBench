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
struct tb_ctl {int /*<<< orphan*/  request_queue_lock; } ;
struct tb_cfg_request {int /*<<< orphan*/  flags; int /*<<< orphan*/  list; struct tb_ctl* ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_REQUEST_ACTIVE ; 
 int /*<<< orphan*/  TB_CFG_REQUEST_CANCELED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tb_cfg_request_cancel_queue ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tb_cfg_request *req)
{
	struct tb_ctl *ctl = req->ctl;

	FUNC2(&ctl->request_queue_lock);
	FUNC1(&req->list);
	FUNC0(TB_CFG_REQUEST_ACTIVE, &req->flags);
	if (FUNC4(TB_CFG_REQUEST_CANCELED, &req->flags))
		FUNC5(&tb_cfg_request_cancel_queue);
	FUNC3(&ctl->request_queue_lock);
}