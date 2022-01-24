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
typedef  scalar_t__ u32 ;
struct asus_wmi {int /*<<< orphan*/  wmi_event_queue; } ;

/* Variables and functions */
 int WMI_EVENT_MASK ; 
 int WMI_EVENT_QUEUE_END ; 
 int WMI_EVENT_QUEUE_SIZE ; 
 scalar_t__ WMI_EVENT_VALUE_ATK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(u32 value, void *context)
{
	struct asus_wmi *asus = context;
	int code;
	int i;

	for (i = 0; i < WMI_EVENT_QUEUE_SIZE + 1; i++) {
		code = FUNC0(value);
		if (code < 0) {
			FUNC2("Failed to get notify code: %d\n", code);
			return;
		}

		if (code == WMI_EVENT_QUEUE_END || code == WMI_EVENT_MASK)
			return;

		FUNC1(code, asus);

		/*
		 * Double check that queue is present:
		 * ATK (with queue) uses 0xff, ASUSWMI (without) 0xd2.
		 */
		if (!asus->wmi_event_queue || value != WMI_EVENT_VALUE_ATK)
			return;
	}

	FUNC2("Failed to process event queue, last code: 0x%x\n", code);
}