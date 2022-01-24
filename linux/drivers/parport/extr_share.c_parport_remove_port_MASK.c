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
struct parport {struct parport** slaves; int /*<<< orphan*/  list; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  dead_ops ; 
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct parport*) ; 
 int /*<<< orphan*/  FUNC5 (struct parport*) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*) ; 
 int /*<<< orphan*/  parportlist_lock ; 
 int /*<<< orphan*/  registration_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct parport *port)
{
	int i;

	FUNC2(&registration_lock);

	/* Spread the word. */
	FUNC0(port);

#ifdef CONFIG_PARPORT_1284
	/* Forget the IEEE1284.3 topology of the port. */
	parport_daisy_fini(port);
	for (i = 1; i < 3; i++) {
		struct parport *slave = port->slaves[i-1];
		if (!slave)
			continue;
		detach_driver_chain(slave);
		parport_daisy_fini(slave);
	}
#endif

	port->ops = &dead_ops;
	FUNC7(&parportlist_lock);
	FUNC1(&port->list);
	for (i = 1; i < 3; i++) {
		struct parport *slave = port->slaves[i-1];
		if (slave)
			FUNC1(&slave->list);
	}
	FUNC8(&parportlist_lock);

	FUNC3(&registration_lock);

	FUNC5(port);

	for (i = 1; i < 3; i++) {
		struct parport *slave = port->slaves[i-1];
		if (slave)
			FUNC6(slave);
	}
}