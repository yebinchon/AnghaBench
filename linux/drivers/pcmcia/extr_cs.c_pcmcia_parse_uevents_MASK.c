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
typedef  int /*<<< orphan*/  u_int ;
struct pcmcia_socket {scalar_t__ thread; int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  sysfs_events; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct pcmcia_socket *s, u_int events)
{
	unsigned long flags;
	FUNC0(&s->dev, "parse_uevents: events %08x\n", events);
	if (s->thread) {
		FUNC1(&s->thread_lock, flags);
		s->sysfs_events |= events;
		FUNC2(&s->thread_lock, flags);

		FUNC3(s->thread);
	}
}