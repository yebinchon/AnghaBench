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
struct raw3215_info {unsigned int count; int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int RAW3215_BUFFER_SIZE ; 
 int /*<<< orphan*/  RAW3215_FLUSHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct raw3215_info *raw, unsigned int length)
{
	while (RAW3215_BUFFER_SIZE - raw->count < length) {
		/* While console is frozen for suspend we have no other
		 * choice but to drop message from the buffer to make
		 * room for even more messages. */
		if (FUNC7(&raw->port)) {
			FUNC2(raw);
			continue;
		}
		/* there might be a request pending */
		raw->flags |= RAW3215_FLUSHING;
		FUNC3(raw);
		FUNC4(raw);
		raw->flags &= ~RAW3215_FLUSHING;
#ifdef CONFIG_TN3215_CONSOLE
		ccw_device_wait_idle(raw->cdev);
#endif
		/* Enough room freed up ? */
		if (RAW3215_BUFFER_SIZE - raw->count >= length)
			break;
		/* there might be another cpu waiting for the lock */
		FUNC6(FUNC1(raw->cdev));
		FUNC8(100);
		FUNC5(FUNC1(raw->cdev));
	}
}