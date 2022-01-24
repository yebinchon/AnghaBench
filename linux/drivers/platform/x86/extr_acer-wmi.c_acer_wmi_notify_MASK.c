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
struct TYPE_2__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct key_entry {int /*<<< orphan*/  keycode; } ;
struct event_return_value {int function; int device_state; int /*<<< orphan*/  key_num; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_BLUETOOTH ; 
 int /*<<< orphan*/  ACER_CAP_THREEG ; 
 int /*<<< orphan*/  ACER_CAP_WIRELESS ; 
 int ACER_WMID3_GDS_BLUETOOTH ; 
 int ACER_WMID3_GDS_THREEG ; 
 int ACER_WMID3_GDS_TOUCHPAD ; 
 int ACER_WMID3_GDS_WIRELESS ; 
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 scalar_t__ AE_OK ; 
#define  KEY_BLUETOOTH 132 
 int /*<<< orphan*/  KEY_TOUCHPAD_OFF ; 
 int /*<<< orphan*/  KEY_TOUCHPAD_ON ; 
#define  KEY_TOUCHPAD_TOGGLE 131 
#define  KEY_WLAN 130 
#define  WMID_ACCEL_EVENT 129 
#define  WMID_HOTKEY_EVENT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  acer_wmi_input_dev ; 
 int /*<<< orphan*/  bluetooth_rfkill ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct key_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  threeg_rfkill ; 
 int /*<<< orphan*/  wireless_rfkill ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static void FUNC9(u32 value, void *context)
{
	struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	struct event_return_value return_value;
	acpi_status status;
	u16 device_state;
	const struct key_entry *key;
	u32 scancode;

	status = FUNC8(value, &response);
	if (status != AE_OK) {
		FUNC4("bad event status 0x%x\n", status);
		return;
	}

	obj = (union acpi_object *)response.pointer;

	if (!obj)
		return;
	if (obj->type != ACPI_TYPE_BUFFER) {
		FUNC4("Unknown response received %d\n", obj->type);
		FUNC2(obj);
		return;
	}
	if (obj->buffer.length != 8) {
		FUNC4("Unknown buffer length %d\n", obj->buffer.length);
		FUNC2(obj);
		return;
	}

	return_value = *((struct event_return_value *)obj->buffer.pointer);
	FUNC2(obj);

	switch (return_value.function) {
	case WMID_HOTKEY_EVENT:
		device_state = return_value.device_state;
		FUNC3("device state: 0x%x\n", device_state);

		key = FUNC6(acer_wmi_input_dev,
							return_value.key_num);
		if (!key) {
			FUNC4("Unknown key number - 0x%x\n",
				return_value.key_num);
		} else {
			scancode = return_value.key_num;
			switch (key->keycode) {
			case KEY_WLAN:
			case KEY_BLUETOOTH:
				if (FUNC1(ACER_CAP_WIRELESS))
					FUNC5(wireless_rfkill,
						!(device_state & ACER_WMID3_GDS_WIRELESS));
				if (FUNC1(ACER_CAP_THREEG))
					FUNC5(threeg_rfkill,
						!(device_state & ACER_WMID3_GDS_THREEG));
				if (FUNC1(ACER_CAP_BLUETOOTH))
					FUNC5(bluetooth_rfkill,
						!(device_state & ACER_WMID3_GDS_BLUETOOTH));
				break;
			case KEY_TOUCHPAD_TOGGLE:
				scancode = (device_state & ACER_WMID3_GDS_TOUCHPAD) ?
						KEY_TOUCHPAD_ON : KEY_TOUCHPAD_OFF;
			}
			FUNC7(acer_wmi_input_dev, scancode, 1, true);
		}
		break;
	case WMID_ACCEL_EVENT:
		FUNC0();
		break;
	default:
		FUNC4("Unknown function number - %d - %d\n",
			return_value.function, return_value.key_num);
		break;
	}
}