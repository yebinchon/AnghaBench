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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun9i_usb_phy* FUNC2 (struct phy*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sun9i_usb_phy*,int) ; 

__attribute__((used)) static int FUNC5(struct phy *_phy)
{
	struct sun9i_usb_phy *phy = FUNC2(_phy);
	int ret;

	ret = FUNC1(phy->clk);
	if (ret)
		goto err_clk;

	ret = FUNC1(phy->hsic_clk);
	if (ret)
		goto err_hsic_clk;

	ret = FUNC3(phy->reset);
	if (ret)
		goto err_reset;

	FUNC4(phy, 1);
	return 0;

err_reset:
	FUNC0(phy->hsic_clk);

err_hsic_clk:
	FUNC0(phy->clk);

err_clk:
	return ret;
}