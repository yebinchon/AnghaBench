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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct remote_event {int armed; scalar_t__ fired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sy ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int
FUNC3(wait_queue_head_t *wq, struct remote_event *event)
{
	if (!event->fired) {
		event->armed = 1;
		FUNC0(sy);
		if (FUNC1(*wq, event->fired)) {
			event->armed = 0;
			return 0;
		}
		event->armed = 0;
		FUNC2();
	}

	event->fired = 0;
	return 1;
}