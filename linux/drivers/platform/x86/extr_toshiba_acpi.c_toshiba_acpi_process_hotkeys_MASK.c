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
typedef  int u32 ;
struct toshiba_acpi_dev {int key_event_valid; int last_key_event; scalar_t__ system_event_supported; scalar_t__ info_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_SYSTEM_EVENT ; 
 int TOS_FIFO_EMPTY ; 
#define  TOS_NOT_SUPPORTED 129 
#define  TOS_SUCCESS 128 
 int FUNC0 (struct toshiba_acpi_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct toshiba_acpi_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct toshiba_acpi_dev*,int) ; 

__attribute__((used)) static void FUNC6(struct toshiba_acpi_dev *dev)
{
	if (dev->info_supported) {
		int scancode = FUNC4(dev);

		if (scancode < 0) {
			FUNC2("Failed to query hotkey event\n");
		} else if (scancode != 0) {
			FUNC5(dev, scancode);
			dev->key_event_valid = 1;
			dev->last_key_event = scancode;
		}
	} else if (dev->system_event_supported) {
		u32 result;
		u32 value;
		int retries = 3;

		do {
			result = FUNC0(dev, HCI_SYSTEM_EVENT, &value);
			switch (result) {
			case TOS_SUCCESS:
				FUNC5(dev, (int)value);
				dev->key_event_valid = 1;
				dev->last_key_event = value;
				break;
			case TOS_NOT_SUPPORTED:
				/*
				 * This is a workaround for an unresolved
				 * issue on some machines where system events
				 * sporadically become disabled.
				 */
				result = FUNC1(dev, HCI_SYSTEM_EVENT, 1);
				if (result == TOS_SUCCESS)
					FUNC3("Re-enabled hotkeys\n");
				/* Fall through */
			default:
				retries--;
				break;
			}
		} while (retries && result != TOS_FIFO_EMPTY);
	}
}