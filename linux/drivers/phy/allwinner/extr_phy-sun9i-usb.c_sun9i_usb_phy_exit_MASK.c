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
struct sun9i_usb_phy {int /*<<< orphan*/  clk; int /*<<< orphan*/  hsic_clk; int /*<<< orphan*/  reset; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sun9i_usb_phy* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sun9i_usb_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct phy *_phy)
{
	struct sun9i_usb_phy *phy = FUNC1(_phy);

	FUNC3(phy, 0);
	FUNC2(phy->reset);
	FUNC0(phy->hsic_clk);
	FUNC0(phy->clk);

	return 0;
}