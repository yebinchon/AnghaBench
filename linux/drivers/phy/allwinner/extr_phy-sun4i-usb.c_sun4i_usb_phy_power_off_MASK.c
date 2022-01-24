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
struct sun4i_usb_phy_data {int /*<<< orphan*/  detect; } ;
struct sun4i_usb_phy {int regulator_on; scalar_t__ index; int /*<<< orphan*/  vbus; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sun4i_usb_phy* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sun4i_usb_phy_data*) ; 
 int /*<<< orphan*/  system_wq ; 
 struct sun4i_usb_phy_data* FUNC4 (struct sun4i_usb_phy*) ; 

__attribute__((used)) static int FUNC5(struct phy *_phy)
{
	struct sun4i_usb_phy *phy = FUNC1(_phy);
	struct sun4i_usb_phy_data *data = FUNC4(phy);

	if (!phy->vbus || !phy->regulator_on)
		return 0;

	FUNC2(phy->vbus);
	phy->regulator_on = false;

	/*
	 * phy0 vbus typically slowly discharges, sometimes this causes the
	 * Vbus gpio to not trigger an edge irq on Vbus off, so force a rescan.
	 */
	if (phy->index == 0 && !FUNC3(data))
		FUNC0(system_wq, &data->detect, POLL_TIME);

	return 0;
}