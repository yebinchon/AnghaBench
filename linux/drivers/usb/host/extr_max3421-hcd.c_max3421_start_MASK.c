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
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  state; int /*<<< orphan*/  power_budget; } ;
struct max3421_hcd {int /*<<< orphan*/  ep_list; int /*<<< orphan*/  rh_state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX3421_RH_RUNNING ; 
 int /*<<< orphan*/  POWER_BUDGET ; 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct usb_hcd *hcd)
{
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);

	FUNC2(&max3421_hcd->lock);
	max3421_hcd->rh_state = MAX3421_RH_RUNNING;

	FUNC0(&max3421_hcd->ep_list);

	hcd->power_budget = POWER_BUDGET;
	hcd->state = HC_STATE_RUNNING;
	hcd->uses_new_polling = 1;
	return 0;
}