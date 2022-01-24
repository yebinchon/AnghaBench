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
typedef  int /*<<< orphan*/  u32 ;
struct sony_nc_event {int data; int event; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct sony_nc_event* sony_100_events ; 
 struct sony_nc_event* sony_127_events ; 
 scalar_t__ FUNC2 (unsigned int,int,unsigned int*) ; 

__attribute__((used)) static int FUNC3(u32 event, unsigned int handle)
{
	int ret = -EINVAL;
	unsigned int result = 0;
	struct sony_nc_event *key_event;

	if (FUNC2(handle, 0x200, &result)) {
		FUNC0("Unable to decode event 0x%.2x 0x%.2x\n", handle,
				event);
		return -EINVAL;
	}

	result &= 0xFF;

	if (handle == 0x0100)
		key_event = sony_100_events;
	else
		key_event = sony_127_events;

	for (; key_event->data; key_event++) {
		if (key_event->data == result) {
			ret = key_event->event;
			break;
		}
	}

	if (!key_event->data)
		FUNC1("Unknown hotkey 0x%.2x/0x%.2x (handle 0x%.2x)\n",
				event, result, handle);

	return ret;
}