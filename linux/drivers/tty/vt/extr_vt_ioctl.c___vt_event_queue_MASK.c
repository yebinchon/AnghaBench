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
struct vt_event_wait {int /*<<< orphan*/  list; scalar_t__ done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vt_event_lock ; 
 int /*<<< orphan*/  vt_events ; 

__attribute__((used)) static void FUNC4(struct vt_event_wait *vw)
{
	unsigned long flags;
	/* Prepare the event */
	FUNC0(&vw->list);
	vw->done = 0;
	/* Queue our event */
	FUNC2(&vt_event_lock, flags);
	FUNC1(&vw->list, &vt_events);
	FUNC3(&vt_event_lock, flags);
}