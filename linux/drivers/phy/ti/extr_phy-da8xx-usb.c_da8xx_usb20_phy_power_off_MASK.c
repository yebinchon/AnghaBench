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
struct phy {int dummy; } ;
struct da8xx_usb_phy {int /*<<< orphan*/  usb20_clk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CFGCHIP2_OTGPWRDN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct da8xx_usb_phy* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct da8xx_usb_phy *d_phy = FUNC2(phy);

	FUNC3(d_phy->regmap, FUNC0(2), CFGCHIP2_OTGPWRDN,
			  CFGCHIP2_OTGPWRDN);

	FUNC1(d_phy->usb20_clk);

	return 0;
}