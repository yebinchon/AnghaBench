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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dim2_hdm {scalar_t__ clk_speed; scalar_t__ io_base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ CLK_2048FS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dim2_hdm* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dim2_hdm *dev = FUNC5(pdev);
	int ret;

	dev->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(dev->clk)) {
		FUNC3(&pdev->dev, "cannot get clock\n");
		return FUNC1(dev->clk);
	}

	ret = FUNC2(dev->clk);
	if (ret) {
		FUNC3(&pdev->dev, "%s\n", "clk_prepare_enable failed");
		return ret;
	}

	if (dev->clk_speed >= CLK_2048FS) {
		/* enable MLP pll and LVDS drivers */
		FUNC6(0x03, dev->io_base + 0x600);
		/* set bias */
		FUNC6(0x888, dev->io_base + 0x38);
	} else {
		/* PLL */
		FUNC6(0x04, dev->io_base + 0x600);
	}


	/* BBCR = 0b11 */
	FUNC6(0x03, dev->io_base + 0x500);
	FUNC6(0x0002FF02, dev->io_base + 0x508);

	return 0;
}