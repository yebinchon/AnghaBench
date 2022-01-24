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
struct parport {int dummy; } ;
struct daisydev {struct daisydev* next; struct parport* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct daisydev*) ; 
 scalar_t__ numdevs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct daisydev* topology ; 
 int /*<<< orphan*/  topology_lock ; 

void FUNC3(struct parport *port)
{
	struct daisydev **p;

	FUNC1(&topology_lock);
	p = &topology;
	while (*p) {
		struct daisydev *dev = *p;
		if (dev->port != port) {
			p = &dev->next;
			continue;
		}
		*p = dev->next;
		FUNC0(dev);
	}

	/* Gaps in the numbering could be handled better.  How should
           someone enumerate through all IEEE1284.3 devices in the
           topology?. */
	if (!topology) numdevs = 0;
	FUNC2(&topology_lock);
	return;
}