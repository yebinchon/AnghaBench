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
struct esas2r_adapter {int /*<<< orphan*/  fw_event_lock; scalar_t__ fw_events_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC2(struct esas2r_adapter *a)
{
	unsigned long flags;

	FUNC0(&a->fw_event_lock, flags);
	a->fw_events_off = 0;
	FUNC1(&a->fw_event_lock, flags);
}