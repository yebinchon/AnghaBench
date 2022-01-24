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
struct qtnf_bus {int /*<<< orphan*/ * hprio_workqueue; int /*<<< orphan*/ * workqueue; int /*<<< orphan*/  fw_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  QTNF_FW_STATE_DETACHED ; 
 unsigned int QTNF_MAX_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_bus*,unsigned int) ; 
 scalar_t__ FUNC5 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct qtnf_bus*) ; 

void FUNC7(struct qtnf_bus *bus)
{
	unsigned int macid;

	FUNC2(bus);

	for (macid = 0; macid < QTNF_MAX_MAC; macid++)
		FUNC4(bus, macid);

	if (FUNC5(bus))
		FUNC3(bus);

	bus->fw_state = QTNF_FW_STATE_DETACHED;

	if (bus->workqueue) {
		FUNC1(bus->workqueue);
		FUNC0(bus->workqueue);
		bus->workqueue = NULL;
	}

	if (bus->hprio_workqueue) {
		FUNC1(bus->hprio_workqueue);
		FUNC0(bus->hprio_workqueue);
		bus->hprio_workqueue = NULL;
	}

	FUNC6(bus);
}