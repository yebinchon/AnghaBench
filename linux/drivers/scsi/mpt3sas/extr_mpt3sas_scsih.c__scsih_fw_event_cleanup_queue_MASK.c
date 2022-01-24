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
struct fw_event_work {int /*<<< orphan*/  work; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  firmware_event_thread; int /*<<< orphan*/  fw_event_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_event_work* FUNC1 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_event_work*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc)
{
	struct fw_event_work *fw_event;

	if (FUNC4(&ioc->fw_event_list) ||
	     !ioc->firmware_event_thread || FUNC3())
		return;

	while ((fw_event = FUNC1(ioc))) {
		/*
		 * Wait on the fw_event to complete. If this returns 1, then
		 * the event was never executed, and we need a put for the
		 * reference the work had on the fw_event.
		 *
		 * If it did execute, we wait for it to finish, and the put will
		 * happen from _firmware_event_work()
		 */
		if (FUNC0(&fw_event->work))
			FUNC2(fw_event);

		FUNC2(fw_event);
	}
}