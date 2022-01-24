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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ type; } ;
struct xb_req_data {scalar_t__ type; int /*<<< orphan*/  user_req; TYPE_1__ msg; } ;

/* Variables and functions */
 scalar_t__ XS_TRANSACTION_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xs_request_id ; 
 int /*<<< orphan*/  xs_state_enter_wq ; 
 int /*<<< orphan*/  xs_state_lock ; 
 int /*<<< orphan*/  xs_state_users ; 
 scalar_t__ xs_suspend_active ; 

__attribute__((used)) static uint32_t FUNC3(struct xb_req_data *req)
{
	uint32_t rq_id;

	req->type = req->msg.type;

	FUNC0(&xs_state_lock);

	while (!xs_state_users && xs_suspend_active) {
		FUNC1(&xs_state_lock);
		FUNC2(xs_state_enter_wq, xs_suspend_active == 0);
		FUNC0(&xs_state_lock);
	}

	if (req->type == XS_TRANSACTION_START && !req->user_req)
		xs_state_users++;
	xs_state_users++;
	rq_id = xs_request_id++;

	FUNC1(&xs_state_lock);

	return rq_id;
}