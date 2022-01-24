#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct tegra_usb_phy {int /*<<< orphan*/  pad_clk; TYPE_1__ u_phy; int /*<<< orphan*/  pad_rst; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  utmip_pad_lock ; 

__attribute__((used)) static int FUNC12(struct tegra_usb_phy *phy)
{
	int ret;

	phy->pad_clk = FUNC5(phy->u_phy.dev, "utmi-pads");
	if (FUNC0(phy->pad_clk)) {
		ret = FUNC1(phy->pad_clk);
		FUNC4(phy->u_phy.dev,
			"Failed to get UTMIP pad clock: %d\n", ret);
		return ret;
	}

	phy->pad_rst = FUNC6(
						phy->u_phy.dev, "utmi-pads");
	if (FUNC0(phy->pad_rst)) {
		ret = FUNC1(phy->pad_rst);
		FUNC4(phy->u_phy.dev,
			"Failed to get UTMI-pads reset: %d\n", ret);
		return ret;
	}

	ret = FUNC3(phy->pad_clk);
	if (ret) {
		FUNC4(phy->u_phy.dev,
			"Failed to enable UTMI-pads clock: %d\n", ret);
		return ret;
	}

	FUNC9(&utmip_pad_lock);

	ret = FUNC8(phy->pad_rst);
	if (ret) {
		FUNC4(phy->u_phy.dev,
			"Failed to initialize UTMI-pads reset: %d\n", ret);
		goto unlock;
	}

	ret = FUNC7(phy->pad_rst);
	if (ret) {
		FUNC4(phy->u_phy.dev,
			"Failed to assert UTMI-pads reset: %d\n", ret);
		goto unlock;
	}

	FUNC11(1);

	ret = FUNC8(phy->pad_rst);
	if (ret)
		FUNC4(phy->u_phy.dev,
			"Failed to deassert UTMI-pads reset: %d\n", ret);
unlock:
	FUNC10(&utmip_pad_lock);

	FUNC2(phy->pad_clk);

	return ret;
}