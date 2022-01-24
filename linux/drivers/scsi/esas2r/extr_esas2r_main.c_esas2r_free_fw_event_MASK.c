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
struct esas2r_fw_event_work {int /*<<< orphan*/  list; struct esas2r_adapter* a; } ;
struct esas2r_adapter {int /*<<< orphan*/  fw_event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esas2r_fw_event_work*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct esas2r_fw_event_work *fw_event)
{
	unsigned long flags;
	struct esas2r_adapter *a = fw_event->a;

	FUNC2(&a->fw_event_lock, flags);
	FUNC1(&fw_event->list);
	FUNC0(fw_event);
	FUNC3(&a->fw_event_lock, flags);
}