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
struct ci_hdrc {int /*<<< orphan*/  gadget; scalar_t__ vbus_active; int /*<<< orphan*/  is_otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTGSC_BSV ; 
 scalar_t__ FUNC0 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ci_hdrc *ci)
{
	if (!ci->is_otg)
		return;

	if (FUNC0(ci, OTGSC_BSV) && !ci->vbus_active)
		FUNC1(&ci->gadget);
	else if (!FUNC0(ci, OTGSC_BSV) && ci->vbus_active)
		FUNC2(&ci->gadget);
}