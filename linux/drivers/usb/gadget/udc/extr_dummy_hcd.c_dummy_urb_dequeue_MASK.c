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
struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct dummy_hcd {scalar_t__ rh_state; TYPE_1__* dum; int /*<<< orphan*/  timer; int /*<<< orphan*/  urbp_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ DUMMY_RH_RUNNING ; 
 struct dummy_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct usb_hcd*,struct urb*,int) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct dummy_hcd *dum_hcd;
	unsigned long	flags;
	int		rc;

	/* giveback happens automatically in timer callback,
	 * so make sure the callback happens */
	dum_hcd = FUNC0(hcd);
	FUNC3(&dum_hcd->dum->lock, flags);

	rc = FUNC5(hcd, urb, status);
	if (!rc && dum_hcd->rh_state != DUMMY_RH_RUNNING &&
			!FUNC1(&dum_hcd->urbp_list))
		FUNC2(&dum_hcd->timer, jiffies);

	FUNC4(&dum_hcd->dum->lock, flags);
	return rc;
}