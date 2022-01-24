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
typedef  int u32 ;
struct phy {int dummy; } ;
struct bcm_kona_usb {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ P1CTL ; 
 int P1CTL_NON_DRIVING ; 
 int P1CTL_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct bcm_kona_usb* FUNC1 (struct phy*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct phy *gphy)
{
	struct bcm_kona_usb *phy = FUNC1(gphy);
	u32 val;

	/* Soft reset PHY */
	val = FUNC2(phy->regs + P1CTL);
	val &= ~P1CTL_NON_DRIVING;
	val |= P1CTL_SOFT_RESET;
	FUNC3(val, phy->regs + P1CTL);
	FUNC3(val & ~P1CTL_SOFT_RESET, phy->regs + P1CTL);
	/* Reset needs to be asserted for 2ms */
	FUNC0(2);
	FUNC3(val | P1CTL_SOFT_RESET, phy->regs + P1CTL);

	return 0;
}