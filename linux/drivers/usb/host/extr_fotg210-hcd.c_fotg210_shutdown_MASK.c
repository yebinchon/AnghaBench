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
struct usb_hcd {int dummy; } ;
struct fotg210_hcd {int shutdown; int /*<<< orphan*/  hrtimer; int /*<<< orphan*/  lock; scalar_t__ enabled_hrtimer_events; int /*<<< orphan*/  rh_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOTG210_RH_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*) ; 
 struct fotg210_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd)
{
	struct fotg210_hcd *fotg210 = FUNC1(hcd);

	FUNC3(&fotg210->lock);
	fotg210->shutdown = true;
	fotg210->rh_state = FOTG210_RH_STOPPING;
	fotg210->enabled_hrtimer_events = 0;
	FUNC4(&fotg210->lock);

	FUNC0(fotg210);

	FUNC2(&fotg210->hrtimer);
}