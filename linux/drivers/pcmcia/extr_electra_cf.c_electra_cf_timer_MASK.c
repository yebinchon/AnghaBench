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
struct electra_cf_socket {int present; int /*<<< orphan*/  timer; scalar_t__ active; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 scalar_t__ POLL_INTERVAL ; 
 int /*<<< orphan*/  SS_DETECT ; 
 struct electra_cf_socket* cf ; 
 int FUNC0 (struct electra_cf_socket*) ; 
 struct electra_cf_socket* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct electra_cf_socket *cf = FUNC1(cf, t, timer);
	int present = FUNC0(cf);

	if (present != cf->present) {
		cf->present = present;
		FUNC3(&cf->socket, SS_DETECT);
	}

	if (cf->active)
		FUNC2(&cf->timer, jiffies + POLL_INTERVAL);
}