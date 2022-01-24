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
struct gigaset_driver {int /*<<< orphan*/  tty; int /*<<< orphan*/  have_tty; } ;
struct cardstate {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * tty_dev; int /*<<< orphan*/  minor_index; int /*<<< orphan*/  port; int /*<<< orphan*/  if_wake_tasklet; struct gigaset_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cardstate*) ; 
 int /*<<< orphan*/  if_wake ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct cardstate *cs)
{
	struct gigaset_driver *drv;

	drv = cs->driver;
	if (!drv->have_tty)
		return;

	FUNC5(&cs->if_wake_tasklet, if_wake, (unsigned long) cs);

	FUNC2(&cs->mutex);
	cs->tty_dev = FUNC6(&cs->port, drv->tty,
			cs->minor_index, NULL);

	if (!FUNC0(cs->tty_dev))
		FUNC1(cs->tty_dev, cs);
	else {
		FUNC4("could not register device to the tty subsystem\n");
		cs->tty_dev = NULL;
	}
	FUNC3(&cs->mutex);
}