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
struct oxu_hcd {int /*<<< orphan*/ * pshadow; int /*<<< orphan*/ * periodic; int /*<<< orphan*/  urb_timer; int /*<<< orphan*/ * async; int /*<<< orphan*/ * murb_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct oxu_hcd *oxu)
{
	FUNC1(oxu->murb_pool);
	oxu->murb_pool = NULL;

	if (oxu->async)
		FUNC2(oxu->async);
	oxu->async = NULL;

	FUNC0(&oxu->urb_timer);

	oxu->periodic = NULL;

	/* shadow periodic table */
	FUNC1(oxu->pshadow);
	oxu->pshadow = NULL;
}