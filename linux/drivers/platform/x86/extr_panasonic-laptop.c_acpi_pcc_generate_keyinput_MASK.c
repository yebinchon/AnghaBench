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
struct pcc_acpi {int /*<<< orphan*/  handle; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  METHOD_HKEY_QUERY ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 
 int sleep_keydown_seen ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,unsigned long long,unsigned long long,int) ; 

__attribute__((used)) static void FUNC4(struct pcc_acpi *pcc)
{
	struct input_dev *hotk_input_dev = pcc->input_dev;
	int rc;
	unsigned long long result;

	rc = FUNC2(pcc->handle, METHOD_HKEY_QUERY,
				   NULL, &result);
	if (FUNC1(rc)) {
		FUNC0((ACPI_DB_ERROR,
				 "error getting hotkey status\n"));
		return;
	}

	/* hack: some firmware sends no key down for sleep / hibernate */
	if ((result & 0xf) == 0x7 || (result & 0xf) == 0xa) {
		if (result & 0x80)
			sleep_keydown_seen = 1;
		if (!sleep_keydown_seen)
			FUNC3(hotk_input_dev,
					result & 0xf, 0x80, false);
	}

	if (!FUNC3(hotk_input_dev,
					result & 0xf, result & 0x80, false))
		FUNC0((ACPI_DB_ERROR,
				  "Unknown hotkey event: %d\n", result));
}