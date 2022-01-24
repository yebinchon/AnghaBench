#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int err; } ;
struct tb_cfg_request {TYPE_1__ result; int /*<<< orphan*/  work; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_REQUEST_CANCELED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tb_cfg_request_cancel_queue ; 
 int /*<<< orphan*/  FUNC2 (struct tb_cfg_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct tb_cfg_request *req, int err)
{
	FUNC1(TB_CFG_REQUEST_CANCELED, &req->flags);
	FUNC0(&req->work);
	FUNC3(tb_cfg_request_cancel_queue, !FUNC2(req));
	req->result.err = err;
}