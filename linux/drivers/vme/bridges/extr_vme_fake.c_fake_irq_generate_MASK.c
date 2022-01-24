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
struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {int int_level; int int_statid; int /*<<< orphan*/  vme_int; int /*<<< orphan*/  int_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct vme_bridge *fake_bridge, int level,
		int statid)
{
	struct fake_driver *bridge;

	bridge = fake_bridge->driver_priv;

	FUNC0(&bridge->vme_int);

	bridge->int_level = level;

	bridge->int_statid = statid;

	/*
	 * Schedule tasklet to run VME handler to emulate normal VME interrupt
	 * handler behaviour.
	 */
	FUNC2(&bridge->int_tasklet);

	FUNC1(&bridge->vme_int);

	return 0;
}