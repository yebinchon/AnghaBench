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
struct rockchip_usb_phy {int /*<<< orphan*/  clk480m; scalar_t__ vbus; scalar_t__ uart_enabled; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rockchip_usb_phy* FUNC1 (struct phy*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct phy *_phy)
{
	struct rockchip_usb_phy *phy = FUNC1(_phy);

	if (phy->uart_enabled)
		return -EBUSY;

	if (phy->vbus) {
		int ret;

		ret = FUNC2(phy->vbus);
		if (ret)
			return ret;
	}

	return FUNC0(phy->clk480m);
}