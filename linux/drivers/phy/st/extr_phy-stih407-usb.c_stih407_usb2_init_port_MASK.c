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
struct stih407_usb2_picophy {int /*<<< orphan*/  rstport; int /*<<< orphan*/  param; int /*<<< orphan*/  regmap; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STIH407_USB_PICOPHY_PARAM_DEF ; 
 int /*<<< orphan*/  STIH407_USB_PICOPHY_PARAM_MASK ; 
 struct stih407_usb2_picophy* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stih407_usb2_picophy*) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	int ret;
	struct stih407_usb2_picophy *phy_dev = FUNC0(phy);

	FUNC3(phy_dev);

	ret = FUNC1(phy_dev->regmap,
				 phy_dev->param,
				 STIH407_USB_PICOPHY_PARAM_MASK,
				 STIH407_USB_PICOPHY_PARAM_DEF);
	if (ret)
		return ret;

	return FUNC2(phy_dev->rstport);
}