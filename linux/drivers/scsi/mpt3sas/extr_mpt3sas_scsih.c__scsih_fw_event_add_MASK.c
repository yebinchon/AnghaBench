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
struct fw_event_work {int /*<<< orphan*/  work; int /*<<< orphan*/  list; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  fw_event_lock; int /*<<< orphan*/ * firmware_event_thread; int /*<<< orphan*/  fw_event_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _firmware_event_work ; 
 int /*<<< orphan*/  FUNC2 (struct fw_event_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct MPT3SAS_ADAPTER *ioc, struct fw_event_work *fw_event)
{
	unsigned long flags;

	if (ioc->firmware_event_thread == NULL)
		return;

	FUNC5(&ioc->fw_event_lock, flags);
	FUNC2(fw_event);
	FUNC0(&fw_event->list);
	FUNC3(&fw_event->list, &ioc->fw_event_list);
	FUNC1(&fw_event->work, _firmware_event_work);
	FUNC2(fw_event);
	FUNC4(ioc->firmware_event_thread, &fw_event->work);
	FUNC6(&ioc->fw_event_lock, flags);
}