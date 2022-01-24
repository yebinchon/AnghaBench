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
typedef  int /*<<< orphan*/  u32 ;
struct rsi_event {int /*<<< orphan*/  event_condition; int /*<<< orphan*/  event_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct rsi_event *event, u32 timeout)
{
	int status = 0;

	if (!timeout)
		status = FUNC1(event->event_queue,
				(FUNC0(&event->event_condition) == 0));
	else
		status = FUNC2(event->event_queue,
				(FUNC0(&event->event_condition) == 0),
				timeout);
	return status;
}