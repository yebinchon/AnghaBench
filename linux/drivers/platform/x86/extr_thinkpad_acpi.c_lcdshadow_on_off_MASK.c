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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hkey_handle ; 
 int lcdshadow_state ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(bool state)
{
	acpi_handle set_shadow_handle;
	int output;

	if (FUNC0(FUNC2(hkey_handle, "SSSS", &set_shadow_handle))) {
		FUNC3("Thinkpad ACPI has no %s interface.\n", "SSSS");
		return -EIO;
	}

	if (!FUNC1(set_shadow_handle, &output, NULL, "dd", (int)state))
		return -EIO;

	lcdshadow_state = state;
	return 0;
}