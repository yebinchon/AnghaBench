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
struct xs_watch_event {char const* path; char const* token; int /*<<< orphan*/  list; int /*<<< orphan*/ * handle; scalar_t__ body; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct xs_watch_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watch_events ; 
 int /*<<< orphan*/  watch_events_lock ; 
 int /*<<< orphan*/  watch_events_waitq ; 
 int /*<<< orphan*/  watches_lock ; 

int FUNC8(struct xs_watch_event *event)
{
	if (FUNC0(event->body, event->len) != 2) {
		FUNC2(event);
		return -EINVAL;
	}
	event->path = (const char *)event->body;
	event->token = (const char *)FUNC6(event->body, '\0') + 1;

	FUNC4(&watches_lock);
	event->handle = FUNC1(event->token);
	if (event->handle != NULL) {
		FUNC4(&watch_events_lock);
		FUNC3(&event->list, &watch_events);
		FUNC7(&watch_events_waitq);
		FUNC5(&watch_events_lock);
	} else
		FUNC2(event);
	FUNC5(&watches_lock);

	return 0;
}