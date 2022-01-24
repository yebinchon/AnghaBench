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
typedef  int /*<<< orphan*/  u8 ;
struct twl4030_usb {int /*<<< orphan*/  dev; int /*<<< orphan*/  linkstat; int /*<<< orphan*/  id_workaround_work; int /*<<< orphan*/  phy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_CLK_CTRL ; 
 int PHY_CLK_CTRL_CLK32K_EN ; 
 int PHY_CLK_CTRL_CLOCKGATING_EN ; 
 int /*<<< orphan*/  POWER_CTRL ; 
 int /*<<< orphan*/  POWER_CTRL_OTG_ENAB ; 
 int REQ_PHY_DPLL_CLK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_vbus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct twl4030_usb* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct twl4030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct twl4030_usb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct twl4030_usb*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct twl4030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct twl4030_usb *twl = FUNC3(pdev);
	int val;

	FUNC14(&twl->phy);
	FUNC6(twl->dev);
	FUNC1(&twl->id_workaround_work);
	FUNC2(twl->dev, &dev_attr_vbus);

	/* set transceiver mode to power on defaults */
	FUNC12(twl, -1);

	/* idle ulpi before powering off */
	if (FUNC0(twl->linkstat))
		FUNC8(twl->dev);
	FUNC7(twl->dev);
	FUNC5(&pdev->dev);
	FUNC9(twl->dev);
	FUNC4(twl->dev);

	/* autogate 60MHz ULPI clock,
	 * clear dpll clock request for i2c access,
	 * disable 32KHz
	 */
	val = FUNC11(twl, PHY_CLK_CTRL);
	if (val >= 0) {
		val |= PHY_CLK_CTRL_CLOCKGATING_EN;
		val &= ~(PHY_CLK_CTRL_CLK32K_EN | REQ_PHY_DPLL_CLK);
		FUNC13(twl, PHY_CLK_CTRL, (u8)val);
	}

	/* disable complete OTG block */
	FUNC10(twl, POWER_CTRL, POWER_CTRL_OTG_ENAB);

	return 0;
}