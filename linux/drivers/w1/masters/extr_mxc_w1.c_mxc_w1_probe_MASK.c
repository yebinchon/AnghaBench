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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  touch_bit; int /*<<< orphan*/  reset_bus; struct mxc_w1_device* data; } ;
struct mxc_w1_device {scalar_t__ clk; TYPE_1__ bus_master; scalar_t__ regs; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ MXC_W1_RESET ; 
 unsigned int MXC_W1_RESET_RST ; 
 scalar_t__ MXC_W1_TIME_DIVIDER ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mxc_w1_device* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxc_w1_ds2_reset_bus ; 
 int /*<<< orphan*/  mxc_w1_ds2_touch_bit ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct mxc_w1_device*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct mxc_w1_device *mdev;
	unsigned long clkrate;
	unsigned int clkdiv;
	int err;

	mdev = FUNC8(&pdev->dev, sizeof(struct mxc_w1_device),
			    GFP_KERNEL);
	if (!mdev)
		return -ENOMEM;

	mdev->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC1(mdev->clk))
		return FUNC2(mdev->clk);

	err = FUNC5(mdev->clk);
	if (err)
		return err;

	clkrate = FUNC4(mdev->clk);
	if (clkrate < 10000000)
		FUNC6(&pdev->dev,
			 "Low clock frequency causes improper function\n");

	clkdiv = FUNC0(clkrate, 1000000);
	clkrate /= clkdiv;
	if ((clkrate < 980000) || (clkrate > 1020000))
		FUNC6(&pdev->dev,
			 "Incorrect time base frequency %lu Hz\n", clkrate);

	mdev->regs = FUNC9(pdev, 0);
	if (FUNC1(mdev->regs)) {
		err = FUNC2(mdev->regs);
		goto out_disable_clk;
	}

	/* Software reset 1-Wire module */
	FUNC12(MXC_W1_RESET_RST, mdev->regs + MXC_W1_RESET);
	FUNC12(0, mdev->regs + MXC_W1_RESET);

	FUNC12(clkdiv - 1, mdev->regs + MXC_W1_TIME_DIVIDER);

	mdev->bus_master.data = mdev;
	mdev->bus_master.reset_bus = mxc_w1_ds2_reset_bus;
	mdev->bus_master.touch_bit = mxc_w1_ds2_touch_bit;

	FUNC10(pdev, mdev);

	err = FUNC11(&mdev->bus_master);
	if (err)
		goto out_disable_clk;

	return 0;

out_disable_clk:
	FUNC3(mdev->clk);
	return err;
}