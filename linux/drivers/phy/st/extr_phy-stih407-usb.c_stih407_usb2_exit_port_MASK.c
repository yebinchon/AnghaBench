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
struct stih407_usb2_picophy {int /*<<< orphan*/  rstport; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 struct stih407_usb2_picophy* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct stih407_usb2_picophy *phy_dev = FUNC0(phy);

	/*
	 * Only port reset is asserted, phy global reset is kept untouched
	 * as other ports may still be active. When all ports are in reset
	 * state, assumption is made that power will be cut off on the phy, in
	 * case of suspend for instance. Theoretically, asserting individual
	 * reset (like here) or global reset should be equivalent.
	 */
	return FUNC1(phy_dev->rstport);
}