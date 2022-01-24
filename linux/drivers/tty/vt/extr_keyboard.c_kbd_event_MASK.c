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
struct input_handle {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int EV_KEY ; 
 unsigned int EV_MSC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MSC_RAW ; 
 int do_poke_blanked_console ; 
 int /*<<< orphan*/  kbd_event_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  keyboard_tasklet ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct input_handle *handle, unsigned int event_type,
		      unsigned int event_code, int value)
{
	/* We are called with interrupts disabled, just take the lock */
	FUNC4(&kbd_event_lock);

	if (event_type == EV_MSC && event_code == MSC_RAW && FUNC0(handle->dev))
		FUNC2(value);
	if (event_type == EV_KEY)
		FUNC1(event_code, value, FUNC0(handle->dev));

	FUNC5(&kbd_event_lock);

	FUNC6(&keyboard_tasklet);
	do_poke_blanked_console = 1;
	FUNC3();
}