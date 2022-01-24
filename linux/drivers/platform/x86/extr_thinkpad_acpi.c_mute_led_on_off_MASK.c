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
struct tp_led_table {int state; int /*<<< orphan*/  off_value; int /*<<< orphan*/  on_value; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hkey_handle ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tp_led_table *t, bool state)
{
	acpi_handle temp;
	int output;

	if (FUNC0(FUNC2(hkey_handle, t->name, &temp))) {
		FUNC3("Thinkpad ACPI has no %s interface.\n", t->name);
		return -EIO;
	}

	if (!FUNC1(hkey_handle, &output, t->name, "dd",
			state ? t->on_value : t->off_value))
		return -EIO;

	t->state = state;
	return state;
}