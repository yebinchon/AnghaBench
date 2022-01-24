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
struct timer_list {int dummy; } ;
struct sclp_req {int /*<<< orphan*/  callback_data; int /*<<< orphan*/  (* callback ) (struct sclp_req*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 struct sclp_req* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  sclp_queue_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sclp_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct timer_list *unused)
{
	unsigned long flags, expires_next;
	struct sclp_req *req;

	do {
		req = FUNC1();
		if (req && req->callback)
			req->callback(req, req->callback_data);
	} while (req);

	FUNC3(&sclp_lock, flags);
	expires_next = FUNC0();
	if (expires_next)
		FUNC2(&sclp_queue_timer, expires_next);
	FUNC4(&sclp_lock, flags);
}