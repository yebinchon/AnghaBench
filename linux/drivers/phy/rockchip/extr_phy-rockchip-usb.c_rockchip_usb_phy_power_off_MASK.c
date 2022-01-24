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
struct rockchip_usb_phy {int /*<<< orphan*/  clk480m; scalar_t__ uart_enabled; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rockchip_usb_phy* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *_phy)
{
	struct rockchip_usb_phy *phy = FUNC1(_phy);

	if (phy->uart_enabled)
		return -EBUSY;

	FUNC0(phy->clk480m);

	return 0;
}