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
struct ssb_bus {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_bus*) ; 
 int FUNC5 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC8 (struct ssb_bus*) ; 

void FUNC9(struct ssb_bus *bus)
{
	int err;

	err = FUNC5(bus);
	if (err == -EBUSY)
		FUNC1("Some GPIOs are still in use\n");
	else if (err)
		FUNC1("Can not unregister GPIO driver: %i\n", err);

	FUNC2();
	FUNC4(bus);
	FUNC0(&bus->list);
	FUNC3();

	FUNC8(bus);
	FUNC7(bus);
	FUNC6(bus);
}