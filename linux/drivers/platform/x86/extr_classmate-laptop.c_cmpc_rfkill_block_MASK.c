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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  void* acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long long) ; 

__attribute__((used)) static int FUNC3(void *data, bool blocked)
{
	acpi_status status;
	acpi_handle handle;
	unsigned long long state;
	bool is_blocked;

	handle = data;
	status = FUNC1(handle, &state);
	if (FUNC0(status))
		return -ENODEV;
	/* Check if we really need to call cmpc_set_rfkill_wlan */
	is_blocked = state & 1 ? false : true;
	if (is_blocked != blocked) {
		state = blocked ? 0 : 1;
		status = FUNC2(handle, state);
		if (FUNC0(status))
			return -ENODEV;
	}
	return 0;
}