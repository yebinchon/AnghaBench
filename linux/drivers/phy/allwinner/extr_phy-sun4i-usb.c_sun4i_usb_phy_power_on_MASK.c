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
struct sun4i_usb_phy_data {int /*<<< orphan*/  detect; scalar_t__ vbus_det; } ;
struct sun4i_usb_phy {int regulator_on; scalar_t__ index; int /*<<< orphan*/  vbus; } ;
struct phy {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBOUNCE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sun4i_usb_phy* FUNC2 (struct phy*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sun4i_usb_phy_data*) ; 
 scalar_t__ FUNC5 (struct sun4i_usb_phy_data*) ; 
 int /*<<< orphan*/  system_wq ; 
 struct sun4i_usb_phy_data* FUNC6 (struct sun4i_usb_phy*) ; 

__attribute__((used)) static int FUNC7(struct phy *_phy)
{
	struct sun4i_usb_phy *phy = FUNC2(_phy);
	struct sun4i_usb_phy_data *data = FUNC6(phy);
	int ret;

	if (!phy->vbus || phy->regulator_on)
		return 0;

	/* For phy0 only turn on Vbus if we don't have an ext. Vbus */
	if (phy->index == 0 && FUNC4(data) &&
				data->vbus_det) {
		FUNC0(&_phy->dev, "External vbus detected, not enabling our own vbus\n");
		return 0;
	}

	ret = FUNC3(phy->vbus);
	if (ret)
		return ret;

	phy->regulator_on = true;

	/* We must report Vbus high within OTG_TIME_A_WAIT_VRISE msec. */
	if (phy->index == 0 && FUNC5(data))
		FUNC1(system_wq, &data->detect, DEBOUNCE_TIME);

	return 0;
}