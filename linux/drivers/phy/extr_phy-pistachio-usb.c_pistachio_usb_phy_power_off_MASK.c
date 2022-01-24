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
struct pistachio_usb_phy {int /*<<< orphan*/  phy_clk; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pistachio_usb_phy* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct pistachio_usb_phy *p_phy = FUNC1(phy);

	FUNC0(p_phy->phy_clk);

	return 0;
}