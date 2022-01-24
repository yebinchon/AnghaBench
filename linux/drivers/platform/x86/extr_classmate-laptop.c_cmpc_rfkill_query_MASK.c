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
struct rfkill {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  void* acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*,int) ; 

__attribute__((used)) static void FUNC3(struct rfkill *rfkill, void *data)
{
	acpi_status status;
	acpi_handle handle;
	unsigned long long state;
	bool blocked;

	handle = data;
	status = FUNC1(handle, &state);
	if (FUNC0(status)) {
		blocked = state & 1 ? false : true;
		FUNC2(rfkill, blocked);
	}
}