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
struct ci_hdrc {int /*<<< orphan*/  usb_phy; scalar_t__ phy; TYPE_1__* platdata; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CI_HDRC_OVERRIDE_PHY_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ci_hdrc *ci)
{
	if (ci->platdata->flags & CI_HDRC_OVERRIDE_PHY_CONTROL)
		return;

	if (ci->phy) {
		FUNC1(ci->phy);
		FUNC0(ci->phy);
	} else {
		FUNC2(ci->usb_phy);
	}
}