#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct moxa_port {int DCDState; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(struct moxa_port *p, u8 dcd)
{
	unsigned long flags;
	dcd = !!dcd;

	FUNC0(&p->port.lock, flags);
	if (dcd != p->DCDState) {
        	p->DCDState = dcd;
        	FUNC1(&p->port.lock, flags);
		if (!dcd)
			FUNC2(&p->port, true);
	}
	else
		FUNC1(&p->port.lock, flags);
}