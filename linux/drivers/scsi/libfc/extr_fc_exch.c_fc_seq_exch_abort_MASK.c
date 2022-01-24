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
struct fc_seq {int dummy; } ;
struct fc_exch {int /*<<< orphan*/  ex_lock; } ;

/* Variables and functions */
 int FUNC0 (struct fc_exch*,unsigned int) ; 
 struct fc_exch* FUNC1 (struct fc_seq const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(const struct fc_seq *req_sp, unsigned int timer_msec)
{
	struct fc_exch *ep;
	int error;

	ep = FUNC1(req_sp);
	FUNC2(&ep->ex_lock);
	error = FUNC0(ep, timer_msec);
	FUNC3(&ep->ex_lock);
	return error;
}