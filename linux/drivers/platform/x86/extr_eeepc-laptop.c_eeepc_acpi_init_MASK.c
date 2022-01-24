#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct eeepc_laptop {int /*<<< orphan*/  cm_supported; int /*<<< orphan*/  handle; TYPE_2__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  present; } ;
struct TYPE_4__ {TYPE_1__ status; } ;

/* Variables and functions */
 unsigned int DISABLE_ASL_DISPLAYSWITCH ; 
 unsigned int DISABLE_ASL_WLAN ; 
 int ENODEV ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct eeepc_laptop *eeepc)
{
	unsigned int init_flags;
	int result;

	result = FUNC0(eeepc->device);
	if (result)
		return result;
	if (!eeepc->device->status.present) {
		FUNC2("Hotkey device not present, aborting\n");
		return -ENODEV;
	}

	init_flags = DISABLE_ASL_WLAN | DISABLE_ASL_DISPLAYSWITCH;
	FUNC4("Hotkey init flags 0x%x\n", init_flags);

	if (FUNC6(eeepc->handle, "INIT", init_flags)) {
		FUNC2("Hotkey initialization failed\n");
		return -ENODEV;
	}

	/* get control methods supported */
	if (FUNC5(eeepc->handle, "CMSG", &eeepc->cm_supported)) {
		FUNC2("Get control methods supported failed\n");
		return -ENODEV;
	}
	FUNC1(eeepc);
	FUNC3("Get control methods supported: 0x%x\n", eeepc->cm_supported);

	return 0;
}