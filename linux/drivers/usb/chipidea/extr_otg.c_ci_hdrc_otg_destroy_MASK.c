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
struct ci_hdrc {scalar_t__ wq; } ;

/* Variables and functions */
 int OTGSC_INT_EN_BITS ; 
 int OTGSC_INT_STATUS_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*) ; 
 scalar_t__ FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ci_hdrc*,int,int) ; 

void FUNC5(struct ci_hdrc *ci)
{
	if (ci->wq) {
		FUNC3(ci->wq);
		FUNC2(ci->wq);
	}
	/* Disable all OTG irq and clear status */
	FUNC4(ci, OTGSC_INT_EN_BITS | OTGSC_INT_STATUS_BITS,
						OTGSC_INT_STATUS_BITS);
	if (FUNC1(ci))
		FUNC0(ci);
}