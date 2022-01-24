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
struct TYPE_3__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef  int /*<<< orphan*/  u32 ;
struct key_entry {scalar_t__ type; int keycode; int /*<<< orphan*/  code; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  scalar_t__ acpi_status ;
struct TYPE_4__ {scalar_t__ quirk_last_pressed; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 scalar_t__ AE_OK ; 
 scalar_t__ KE_KEY ; 
 int /*<<< orphan*/  MSI_KEY_BRIGHTNESSDOWN ; 
 int /*<<< orphan*/  MSI_KEY_BRIGHTNESSUP ; 
 scalar_t__ backlight ; 
 TYPE_2__* event_wmi ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_pressed ; 
 int /*<<< orphan*/  msi_wmi_input_dev ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct key_entry* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct key_entry*,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static void FUNC9(u32 value, void *context)
{
	struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, NULL };
	struct key_entry *key;
	union acpi_object *obj;
	acpi_status status;

	status = FUNC8(value, &response);
	if (status != AE_OK) {
		FUNC5("bad event status 0x%x\n", status);
		return;
	}

	obj = (union acpi_object *)response.pointer;

	if (obj && obj->type == ACPI_TYPE_INTEGER) {
		int eventcode = obj->integer.value;
		FUNC4("Eventcode: 0x%x\n", eventcode);
		key = FUNC6(msi_wmi_input_dev,
				eventcode);
		if (!key) {
			FUNC5("Unknown key pressed - %x\n", eventcode);
			goto msi_wmi_notify_exit;
		}

		if (event_wmi->quirk_last_pressed) {
			ktime_t cur = FUNC1();
			ktime_t diff = FUNC2(cur, last_pressed);
			/* Ignore event if any event happened in a 50 ms
			   timeframe -> Key press may result in 10-20 GPEs */
			if (FUNC3(diff) < 1000 * 50) {
				FUNC4("Suppressed key event 0x%X - "
					 "Last press was %lld us ago\n",
					 key->code, FUNC3(diff));
				goto msi_wmi_notify_exit;
			}
			last_pressed = cur;
		}

		if (key->type == KE_KEY &&
		/* Brightness is served via acpi video driver */
		(backlight ||
		(key->code != MSI_KEY_BRIGHTNESSUP &&
		key->code != MSI_KEY_BRIGHTNESSDOWN))) {
			FUNC4("Send key: 0x%X - Input layer keycode: %d\n",
				 key->code, key->keycode);
			FUNC7(msi_wmi_input_dev, key, 1,
						   true);
		}
	} else
		FUNC5("Unknown event received\n");

msi_wmi_notify_exit:
	FUNC0(response.pointer);
}