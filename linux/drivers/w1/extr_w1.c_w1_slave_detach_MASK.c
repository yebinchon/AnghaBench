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
struct w1_slave {TYPE_1__* master; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  W1_SLAVE_DETACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct w1_slave*) ; 

int FUNC5(struct w1_slave *sl)
{
	/* Only detach a slave once as it decreases the refcnt each time. */
	int destroy_now;
	FUNC0(&sl->master->list_mutex);
	destroy_now = !FUNC3(W1_SLAVE_DETACH, &sl->flags);
	FUNC2(W1_SLAVE_DETACH, &sl->flags);
	FUNC1(&sl->master->list_mutex);

	if (destroy_now)
		destroy_now = !FUNC4(sl);
	return destroy_now ? 0 : -EBUSY;
}