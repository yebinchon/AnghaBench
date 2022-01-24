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
struct slot {TYPE_1__* zdev; } ;
struct hotplug_slot {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ZPCI_DEVFN ; 
 scalar_t__ ZPCI_FN_STATE_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct slot*) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*) ; 
 struct slot* FUNC6 (struct hotplug_slot*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct hotplug_slot *hotplug_slot)
{
	struct slot *slot = FUNC6(hotplug_slot);
	int rc;

	if (slot->zdev->state != ZPCI_FN_STATE_STANDBY)
		return -EIO;

	rc = FUNC4(slot);
	if (rc)
		return rc;

	rc = FUNC7(slot->zdev);
	if (rc)
		goto out_deconfigure;

	FUNC2(slot->zdev->bus, ZPCI_DEVFN);
	FUNC1();
	FUNC0(slot->zdev->bus);
	FUNC3();

	return rc;

out_deconfigure:
	FUNC5(slot);
	return rc;
}