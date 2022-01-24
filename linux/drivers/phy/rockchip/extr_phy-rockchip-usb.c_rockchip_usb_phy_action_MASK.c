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
struct rockchip_usb_phy {scalar_t__ clk; int /*<<< orphan*/  clk480m; int /*<<< orphan*/  np; int /*<<< orphan*/  uart_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct rockchip_usb_phy *rk_phy = data;

	if (!rk_phy->uart_enabled) {
		FUNC2(rk_phy->np);
		FUNC1(rk_phy->clk480m);
	}

	if (rk_phy->clk)
		FUNC0(rk_phy->clk);
}