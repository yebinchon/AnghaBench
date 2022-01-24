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
struct xsd_sockmsg {int /*<<< orphan*/  req_id; } ;
struct xb_req_data {int /*<<< orphan*/  list; struct xsd_sockmsg msg; int /*<<< orphan*/  caller_req_id; int /*<<< orphan*/  wq; int /*<<< orphan*/  state; scalar_t__ err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xb_req_state_queued ; 
 int /*<<< orphan*/  xb_waitq ; 
 int /*<<< orphan*/  xb_write_list ; 
 int /*<<< orphan*/  xb_write_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct xb_req_data*) ; 

__attribute__((used)) static void FUNC7(struct xb_req_data *req, struct xsd_sockmsg *msg)
{
	bool notify;

	req->msg = *msg;
	req->err = 0;
	req->state = xb_req_state_queued;
	FUNC0(&req->wq);

	/* Save the caller req_id and restore it later in the reply */
	req->caller_req_id = req->msg.req_id;
	req->msg.req_id = FUNC6(req);

	FUNC3(&xb_write_mutex);
	FUNC1(&req->list, &xb_write_list);
	notify = FUNC2(&xb_write_list);
	FUNC4(&xb_write_mutex);

	if (notify)
		FUNC5(&xb_waitq);
}