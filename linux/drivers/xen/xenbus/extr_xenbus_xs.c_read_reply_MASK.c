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
struct xb_req_data {scalar_t__ state; int err; void* body; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int EIO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xb_req_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xb_req_state_got_reply ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void *FUNC4(struct xb_req_data *req)
{
	while (req->state != xb_req_state_got_reply) {
		FUNC2(req->wq, FUNC1(req));

		if (!FUNC3())
			/*
			 * If we are in the process of being shut-down there is
			 * no point of trying to contact XenBus - it is either
			 * killed (xenstored application) or the other domain
			 * has been killed or is unreachable.
			 */
			return FUNC0(-EIO);
		if (req->err)
			return FUNC0(req->err);

	}

	return req->body;
}