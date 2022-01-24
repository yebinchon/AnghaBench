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
struct timer_list {int dummy; } ;
struct pxa25x_udc {scalar_t__ ep0state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DBG_VERBOSE ; 
 scalar_t__ EP0_STALL ; 
 int UDCCS0_FST ; 
 int UDCCS0_FTF ; 
 int UDCCS0_SST ; 
 struct pxa25x_udc* dev ; 
 struct pxa25x_udc* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  timer ; 
 int FUNC5 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa25x_udc*,int) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct pxa25x_udc	*dev = FUNC1(dev, t, timer);

	FUNC2();
	if (dev->ep0state == EP0_STALL
			&& (FUNC5(dev) & UDCCS0_FST) == 0
			&& (FUNC5(dev) & UDCCS0_SST) == 0) {
		FUNC6(dev, UDCCS0_FST|UDCCS0_FTF);
		FUNC0(DBG_VERBOSE, "ep0 re-stall\n");
		FUNC4(dev);
	}
	FUNC3();
}