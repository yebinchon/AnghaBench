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
struct dim2_hdm {scalar_t__ clk_speed; void* clk_pll; scalar_t__ io_base; void* clk; } ;

/* Variables and functions */
 scalar_t__ CLK_2048FS ; 
 int EFAULT ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct dim2_hdm* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dim2_hdm *dev = FUNC5(pdev);
	int ret;

	dev->clk = FUNC4(&pdev->dev, "mlb");
	if (FUNC0(dev->clk)) {
		FUNC3(&pdev->dev, "unable to get mlb clock\n");
		return -EFAULT;
	}

	ret = FUNC2(dev->clk);
	if (ret) {
		FUNC3(&pdev->dev, "%s\n", "clk_prepare_enable failed");
		return ret;
	}

	if (dev->clk_speed >= CLK_2048FS) {
		/* enable pll */
		dev->clk_pll = FUNC4(&pdev->dev, "pll8_mlb");
		if (FUNC0(dev->clk_pll)) {
			FUNC3(&pdev->dev, "unable to get mlb pll clock\n");
			FUNC1(dev->clk);
			return -EFAULT;
		}

		FUNC6(0x888, dev->io_base + 0x38);
		FUNC2(dev->clk_pll);
	}

	return 0;
}