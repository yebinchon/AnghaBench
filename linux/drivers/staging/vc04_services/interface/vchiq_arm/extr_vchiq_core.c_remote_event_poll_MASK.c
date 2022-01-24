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
struct remote_event {scalar_t__ armed; scalar_t__ fired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct remote_event*) ; 

__attribute__((used)) static inline void
FUNC1(wait_queue_head_t *wq, struct remote_event *event)
{
	if (event->fired && event->armed)
		FUNC0(wq, event);
}